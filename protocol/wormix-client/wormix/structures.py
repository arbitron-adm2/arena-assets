"""Structure decoders, transcribed from the 1.26.0 client's ``*BinarySerializer`` classes.

Every function takes :class:`wormix.codec.Reader` and returns a plain ``dict`` so
the CLI can render it as JSON without extra machinery.
"""

from __future__ import annotations

from .codec import Reader


def team_member(r: Reader) -> dict:
    """TeamMemberStructureBinarySerializer"""
    d = {
        "owner_id": r.u32(),
        "armor": r.i8(),
        "attack": r.i8(),
        "level": r.i8(),
        "experience": r.i32(),
        "hat_id": r.i16(),
        "race_id": r.i8(),
        "artifact_id": r.i16(),
        "social_owner_id": r.utf(),
        "team_member_type": r.i16(),
        "is_active": r.boolean(),
    }
    if not d["social_owner_id"]:
        d["social_owner_id"] = str(d["owner_id"])
    return d


def weapon(r: Reader) -> dict:
    """WeaponStructureBinarySerializer: uint weaponId + int level."""
    return {"weapon_id": r.u32(), "level": r.i32()}


def clan_member(r: Reader) -> dict:
    """ClanMemberStructureBinarySerializer"""
    return {
        "rank": r.i16(),
        "clan_id": r.i32(),
        "clan_name": r.utf(),
        "emblem": list(r.take(r.u16())),
        "clan_rating": r.i32(),
        "clan_season_rating": r.i32(),
        "review_state": r.i16(),
        "prev_season_top_place": r.i32(),
    }


def user_profile(r: Reader) -> dict:
    """UserProfileStructureBinarySerializer"""
    p = {
        "id": r.u32(),
        "money": r.i32(),
        "real_money": r.i32(),
        "rating": r.i32(),
    }
    p["units"] = [team_member(r) for _ in range(r.u16())]
    p["weapons"] = [weapon(r) for _ in range(r.u16())]
    p["stuff"] = [r.i16() for _ in range(r.u16())]
    p["temporal_stuff"] = {r.i16(): r.i32() for _ in range(r.u16() // 6)}
    p["reaction_rate"] = r.i32()
    p["social_id"] = r.utf() or str(p["id"])
    p["recipes"] = [r.i16() for _ in range(r.u16())]
    p["clan_member"] = clan_member(r)
    return p


def generic_award(r: Reader) -> dict:
    return {"award_kind": r.i16(), "count": r.i32(), "item_id": r.i32()}


def login_award(r: Reader) -> dict:
    return {
        "award_type": r.i16(),
        "awards": [generic_award(r) for _ in range(r.u16())],
        "attach": r.utf(),
    }


def clan_invite(r: Reader) -> dict:
    return {
        "clan_id": r.i32(),
        "clan_name": r.utf(),
        "emblem": list(r.take(r.u16())),
        "social_id": r.i16(),
        "profile_id": r.u32(),
        "string_profile_id": r.utf(),
        "rank": r.i16(),
        "name": r.utf(),
        "invite_date": r.i32(),
    }


def rating_profile(r: Reader) -> dict:
    """RatingProfileStructureBinarySerializer"""
    d = {
        "id": r.u32(),
        "armor": r.i32(),
        "attack": r.i32(),
        "level": r.i32(),
        "money": r.i32(),
        "real_money": r.i32(),
        "reaction_rate": r.i32(),
        "rating": r.i32(),
        "group_count": r.i32(),
        "hat_id": r.i16(),
        "race_id": r.i16(),
        "artifact_id": r.i16(),
        "social_id": r.utf(),
    }
    if not d["social_id"]:
        d["social_id"] = str(d["id"])
    d["clan_member"] = clan_member(r)
    d["daily_rating"] = r.i32()
    d["old_place"] = r.i32()
    return d


def heroic_mission(r: Reader) -> dict:
    """HeroicMissionStructureBinarySerializer: short-count short list + uint mapId."""
    return {"boss_ids": [r.i16() for _ in range(r.u16())], "map_id": r.u32()}


def gladiator_unit(r: Reader) -> dict:
    """GladiatorUnitStructureBinarySerializer"""
    return {
        "race_id": r.i8(),
        "armor": r.i8(),
        "attack": r.i8(),
        "hat_id": r.i16(),
        "artifact_id": r.i16(),
    }


def length_prefixed(r: Reader, decode, signed: bool = True) -> list:
    """Server serializers write ``short count`` then ``short size`` + payload per item."""
    out = []
    for _ in range(r.u16()):
        r.i16()  # per-item byte length, redundant for sequential reads
        out.append(decode(r))
    return out
