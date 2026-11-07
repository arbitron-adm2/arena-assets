"""High-level client facade."""

from __future__ import annotations

import time
from dataclasses import dataclass

from . import messages
from .auth import FlashVars
from .exceptions import LoginRejected, ProtocolError
from .transport import GameConnection

DEFAULT_HOST = "wormixtest.ru"
DEFAULT_PORT = 49197  # main world: answers LOGIN with ENTER_ACCOUNT
DEFAULT_VERSION = (1, 26, 0, 99)


@dataclass
class Session:
    viewer_id: int
    session_key: str
    server_time: int
    account: messages.EnterAccount

    @property
    def profile(self) -> dict:
        return self.account.profile


class WormixClient:
    """Read-first client for the WormixTest game protocol.

    ``with WormixClient(flashvars) as client:`` connects and logs in. Every
    method is a single request/response round trip; state lives in
    :attr:`session`.
    """

    def __init__(
        self,
        flashvars: FlashVars,
        *,
        host: str = DEFAULT_HOST,
        port: int = DEFAULT_PORT,
        version: tuple[int, int, int, int] = DEFAULT_VERSION,
        timeout: float = 10.0,
        min_interval: float = 0.05,
    ):
        self.flashvars = flashvars
        self.version = version
        self.timeout = timeout
        self.connection = GameConnection(host=host, port=port, min_interval=min_interval)
        self.session: Session | None = None
        self._connected_at = 0.0

    # -- lifecycle ---------------------------------------------------------
    def connect(self) -> "WormixClient":
        self.connection.connect()
        self._connected_at = time.time()
        self.login()
        return self

    def close(self) -> None:
        self.connection.close()

    def __enter__(self) -> "WormixClient":
        return self.connect()

    def __exit__(self, *exc_info) -> None:
        self.close()

    # -- auth --------------------------------------------------------------
    def login(self) -> Session:
        body = messages.encode_login(
            self.flashvars.viewer_id,
            self.flashvars.auth_key,
            self.version,
            social_code=self.flashvars.social_code,
        )
        reply = self.connection.request(
            messages.CMD_LOGIN,
            body,
            expect=(messages.CMD_LOGIN_ERROR, messages.CMD_ENTER_ACCOUNT),
            timeout=self.timeout,
        )
        if reply.command == messages.CMD_LOGIN_ERROR:
            raise LoginRejected(messages.decode_login_error(reply.body))
        try:
            account = messages.decode_enter_account(reply.body)
        except (ValueError, ProtocolError) as exc:
            raise ProtocolError(f"cannot parse ENTER_ACCOUNT: {exc}") from exc
        if not account.signature_ok:
            raise ProtocolError("ENTER_ACCOUNT reply signature does not verify with the client secret")
        self.session = Session(
            viewer_id=self.flashvars.viewer_id,
            session_key=account.session_key,
            server_time=account.server_time,
            account=account,
        )
        return self.session

    @property
    def _session(self) -> Session:
        if self.session is None:
            raise RuntimeError("not logged in; call connect() first")
        return self.session

    # -- read-only commands ------------------------------------------------
    def ping(self, timeout: float | None = None) -> bool:
        """Ping -> Pong (10017). Returns True when the server answered."""
        reply = self.connection.request(
            messages.CMD_PING, b"", expect=messages.CMD_PONG, timeout=timeout or self.timeout
        )
        return reply.command == messages.CMD_PONG

    def profiles(self, ids: list[str | int] | None = None) -> list[dict]:
        """Fetch full profiles by social id (default: self)."""
        social_ids = [str(i) for i in (ids or [self._session.viewer_id])]
        reply = self.connection.request(
            messages.CMD_GET_PROFILES,
            messages.encode_get_profiles(self._session.session_key, social_ids),
            expect=messages.CMD_PROFILES_RESULT,
            timeout=self.timeout,
        )
        return messages.decode_profiles_result(reply.body)

    def friend_list_page(self, page: int = 0) -> list[dict]:
        reply = self.connection.request(
            messages.CMD_GET_FRIEND_LIST_PAGE,
            messages.encode_get_friend_list_page(page),
            expect=messages.CMD_FRIEND_LIST_PAGE_RESULT,
            timeout=self.timeout,
        )
        return messages.decode_friend_list_page(reply.body)

    def rating(self, rating_type: int = 0, battle_wager: int = 0) -> dict:
        reply = self.connection.request(
            messages.CMD_GET_RATING,
            messages.encode_get_rating(rating_type, battle_wager),
            expect=messages.CMD_RATING_RESULT,
            timeout=self.timeout,
        )
        return messages.decode_rating_result(reply.body)

    def reagents(self, profile_id: int | None = None) -> list[int]:
        reply = self.connection.request(
            messages.CMD_GET_REAGENTS_FOR_PROFILE,
            messages.encode_get_reagents(int(profile_id or self._session.viewer_id)),
            expect=messages.CMD_REAGENTS_FOR_PROFILE_RESULT,
            timeout=self.timeout,
        )
        return messages.decode_reagents(reply.body)

    def coliseum_state(self) -> dict:
        reply = self.connection.request(
            messages.CMD_GET_COLISEUM_STATE,
            b"",
            expect=messages.CMD_COLISEUM_STATE_RESPONSE,
            timeout=self.timeout,
        )
        return messages.decode_coliseum_state(reply.body)

    def arena(self) -> dict:
        reply = self.connection.request(
            messages.CMD_GET_ARENA,
            messages.encode_get_arena(),
            expect=messages.CMD_ARENA_RESULT,
            timeout=self.timeout,
        )
        return messages.decode_arena(reply.body)

    # -- mutating (CLI requires --confirm) ---------------------------------
    def send_chat(self, text: str) -> int:
        reply = self.connection.request(
            messages.CMD_CHAT_MESSAGE,
            messages.encode_chat_message(text),
            expect=messages.CMD_CHAT_MESSAGE_RESPONSE,
            timeout=self.timeout,
        )
        return messages.decode_chat_result(reply.body)

    # -- diagnostics -------------------------------------------------------
    def world_state(self) -> dict:
        s = self._session
        return {
            "viewer_id": s.viewer_id,
            "server": f"{self.connection.host}:{self.connection.port}",
            "server_time": s.server_time,
            "client_version": ".".join(map(str, self.version)),
            "profile": {
                "id": s.profile["id"],
                "money": s.profile["money"],
                "real_money": s.profile["real_money"],
                "rating": s.profile["rating"],
                "reaction_rate": s.profile["reaction_rate"],
                "units": len(s.profile["units"]),
                "weapons": len(s.profile["weapons"]),
                "clan": s.profile["clan_member"],
            },
            "friends": {"total": s.account.friends, "online": s.account.online_friends},
            "solo_mission": s.account.cur_solo_mission_id,
            "cooperative_mission": s.account.cur_cooperative_mission_id,
            "logins": {"sequence": s.account.login_sequence},
            "bytes": {"sent": self.connection.sent_bytes, "received": self.connection.received_bytes},
        }
