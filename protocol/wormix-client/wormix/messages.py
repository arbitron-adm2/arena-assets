"""Message catalog and codecs.

Command ids and field order come from the decompiled 1.26.0 client
(``ru.pragmatix.wormix.serialization.*``) - see ``endpoint_inventory.json``
for the full catalog with the source file that proves each entry.
"""

from __future__ import annotations

from dataclasses import dataclass, field

from . import structures
from .codec import DEFAULT_SECRET, Reader, Writer, strip_trailer, verify_signed
from .exceptions import LoginRejected, ProtocolError

# --- client -> server -------------------------------------------------------
CMD_LOGIN = 1
CMD_NEED_MONEY = 2
CMD_BUY_SHOP_ITEMS = 3
CMD_GET_PROFILES = 5
CMD_START_BATTLE = 6
CMD_BUY_BATTLE = 11
CMD_ADD_TO_GROUP = 12
CMD_REMOVE_FROM_GROUP = 13
CMD_DISTRIBUTE_POINTS = 14
CMD_RESET_PARAMETERS = 15
CMD_PING = 16
CMD_GET_FRIEND_LIST_PAGE = 18
CMD_GET_RATING = 19
CMD_CHAT_MESSAGE = 51
CMD_GET_REAGENTS_FOR_PROFILE = 85
CMD_UPGRADE_WEAPON = 86
CMD_OPEN_CHEST = 102
CMD_GET_COLISEUM_STATE = 110
CMD_GET_ARENA = 708

# --- server -> client -------------------------------------------------------
CMD_ENTER_ACCOUNT = 10001
CMD_LOGIN_ERROR = 10002
CMD_PROFILES_RESULT = 10005
CMD_ARENA_RESULT = 10004
CMD_SHOW_SYSTEM_MESSAGE = 10011
CMD_PONG = 10017
CMD_FRIEND_LIST_PAGE_RESULT = 10018
CMD_RATING_RESULT = 10019
CMD_CHAT_MESSAGE_RESPONSE = 10039
CMD_COLISEUM_STATE_RESPONSE = 10110
CMD_REAGENTS_FOR_PROFILE_RESULT = 10085
CMD_ACHIEVE_LOGIN_SUCCESS = 13001
CMD_ACHIEVE_LOGIN_ERROR = 13002

# 1.61.x clients additionally answer on the battle world with this pair.
CMD_ACHIEVE_LOGIN = 3001

COMMAND_NAMES: dict[int, str] = {
    CMD_LOGIN: "Login",
    CMD_GET_PROFILES: "GetProfiles",
    CMD_PING: "Ping",
    CMD_GET_FRIEND_LIST_PAGE: "GetFriendListPage",
    CMD_GET_RATING: "GetRating",
    CMD_GET_REAGENTS_FOR_PROFILE: "GetReagentsForProfile",
    CMD_GET_COLISEUM_STATE: "GetColiseumState",
    CMD_GET_ARENA: "GetArena",
    CMD_CHAT_MESSAGE: "ChatMessage",
    CMD_ENTER_ACCOUNT: "EnterAccount",
    CMD_LOGIN_ERROR: "LoginError",
    CMD_PROFILES_RESULT: "ProfilesResult",
    CMD_ARENA_RESULT: "ArenaResult",
    CMD_SHOW_SYSTEM_MESSAGE: "ShowSystemMessage",
    CMD_PONG: "Pong",
    CMD_FRIEND_LIST_PAGE_RESULT: "GetFriendListPageResult",
    CMD_RATING_RESULT: "GetRatingResult",
    CMD_CHAT_MESSAGE_RESPONSE: "ChatMessageResponse",
    CMD_REAGENTS_FOR_PROFILE_RESULT: "ReagentsForProfile",
    CMD_COLISEUM_STATE_RESPONSE: "ColiseumStateResponse",
}


def command_name(cmd: int) -> str:
    return COMMAND_NAMES.get(cmd, f"cmd_{cmd}")


# --- login ------------------------------------------------------------------
def encode_login(
    viewer_id: int,
    auth_key: str,
    version: tuple[int, int, int, int] = (1, 26, 0, 99),
    *,
    referrer_id: int = 0,
    ids: list[int] | None = None,
    social_code: int = 1,
    params: list[str] | None = None,
) -> bytes:
    """LoginBinarySerializer.serializeCommand (command 1)."""
    w = Writer()
    w.u32(viewer_id).u32(referrer_id).utf(auth_key)
    w.i32((version[0] << 24) | (version[1] << 16) | (version[2] << 8) | version[3])
    ids = ids or []
    w.u16(len(ids))
    for i in ids:
        w.u32(i)
    w.u8(social_code)
    params = params or []
    w.u16(len(params))
    for p in params:
        w.utf(p)
    return w.build()


def decode_login_error(body: bytes) -> int:
    """LoginErrorBinarySerializer: int code."""
    return Reader(body).i32()


@dataclass
class EnterAccount:
    profile: dict
    profiles: list[dict]
    login_awards: list[dict]
    online_friends: int
    friends: int
    session_key: str
    available_search_keys: int
    reagents: list[int]
    cur_solo_mission_id: int
    cur_cooperative_mission_id: int
    invites: list[dict]
    server_time: int
    backpack_conf: list[int]
    hotkeys: list[int]
    login_sequence: int
    signature_ok: bool
    raw_tail: bytes = field(default=b"", repr=False)


def decode_enter_account(body: bytes, *, secret: bytes | None = None) -> EnterAccount:
    """EnterAccountBinarySerializer (command 10001), 1.26.0 layout."""
    r = Reader(body)
    r.i16()  # leading short, ignored by the client
    profile = structures.user_profile(r)
    profiles = structures.length_prefixed(r, structures.user_profile)
    awards = structures.length_prefixed(r, structures.login_award)
    online_friends = r.i16()
    friends = r.i16()
    session_key = r.utf()
    available_search_keys = r.i8()
    reagents = [r.i32() for _ in range(r.u16())]
    cur_solo = r.i16()
    cur_coop = r.i16()
    invites = structures.length_prefixed(r, structures.clan_invite)
    server_time = r.i32()
    backpack = r.i16_list()
    hotkeys = r.i16_list()
    login_sequence = r.i8()
    tail = body[r.pos :]
    if len(tail) != 16:
        raise ProtocolError(f"EnterAccount: expected 16-byte trailer, got {len(tail)} (parsed {r.pos}/{len(body)})")
    sig_ok = verify_signed(body, secret) if secret else verify_signed(body)
    return EnterAccount(
        profile=profile,
        profiles=profiles,
        login_awards=awards,
        online_friends=online_friends,
        friends=friends,
        session_key=session_key,
        available_search_keys=available_search_keys,
        reagents=reagents,
        cur_solo_mission_id=cur_solo,
        cur_cooperative_mission_id=cur_coop,
        invites=invites,
        server_time=server_time,
        backpack_conf=backpack,
        hotkeys=hotkeys,
        login_sequence=login_sequence,
        signature_ok=sig_ok,
        raw_tail=tail,
    )


# --- simple requests --------------------------------------------------------
def encode_ping() -> bytes:
    return b""


def encode_get_profiles(session_key: str, ids: list[str]) -> bytes:
    """GetProfilesBinarySerializer (command 5): sessionKey + short-string list."""
    w = Writer().utf(session_key).u16(len(ids))
    for i in ids:
        w.utf(str(i))
    return w.build()


def encode_get_friend_list_page(page_index: int) -> bytes:
    return Writer().i32(page_index).build()


def encode_get_rating(rating_type: int = 0, battle_wager: int = 0) -> bytes:
    return Writer().i16(rating_type).i16(battle_wager).build()


def encode_get_reagents(profile_id: int) -> bytes:
    return Writer().u32(profile_id).build()


def encode_get_arena() -> bytes:
    return b""


def encode_chat_message(message: str) -> bytes:
    return Writer().utf(message).build()


# --- responses --------------------------------------------------------------
def _payload(body: bytes, secret: bytes = DEFAULT_SECRET) -> bytes:
    """Servers that sign replies append the 16-byte trailer; tolerate both."""
    return strip_trailer(body) if verify_signed(body, secret) else body


def decode_profiles_result(body: bytes) -> list[dict]:
    """ProfilesResultBinarySerializer (command 10005)."""
    return structures.length_prefixed(Reader(_payload(body)), structures.user_profile)


def decode_friend_list_page(body: bytes) -> list[dict]:
    return structures.length_prefixed(Reader(_payload(body)), structures.user_profile)


def decode_rating_result(body: bytes) -> dict:
    """GetRatingResultBinarySerializer (command 10019)."""
    r = Reader(_payload(body))
    profiles = structures.length_prefixed(r, structures.rating_profile)
    return {
        "profiles": profiles,
        "rating": r.i32(),
        "old_place": r.i32(),
        "place": r.i32(),
        "rating_type": r.i16(),
        "battle_wager": r.i16(),
    }


def decode_reagents(body: bytes) -> list[int]:
    """ReagentsForProfile (command 10085): short count + int list."""
    r = Reader(_payload(body))
    return [r.i32() for _ in range(r.u16())]


def decode_arena(body: bytes) -> dict:
    """ArenaResult (command 10004)."""
    r = Reader(_payload(body))
    out = {
        "battles_count": r.i32(),
        "cur_solo_mission_id": r.i16(),
        "cur_cooperative_mission_id": r.i16(),
        "boss_available": r.boolean(),
        "super_boss_available": r.boolean(),
    }
    out["heroic_missions"] = structures.length_prefixed(r, structures.heroic_mission)
    return out


def decode_coliseum_state(body: bytes) -> dict:
    """ColiseumStateResponseBinarySerializer (command 10110)."""
    r = Reader(_payload(body))
    out = {
        "num": r.i32(),
        "is_open": r.boolean(),
        "win_count": r.i32(),
        "defeat_count": r.i32(),
        "draw_count": r.i32(),
        "error": r.i32(),
    }
    out["candidates"] = structures.length_prefixed(r, structures.gladiator_unit)
    out["team"] = structures.length_prefixed(r, structures.gladiator_unit)
    out["open_from"] = r.i32()
    out["open_to"] = r.i32()
    return out


def decode_system_message(body: bytes) -> str:
    return Reader(_payload(body)).utf()


def decode_chat_result(body: bytes) -> int:
    return Reader(_payload(body)).i8()
