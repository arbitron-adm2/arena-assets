"""Frame header (7 bytes) exactly as the client's ``§9$L§`` class writes it.

Layout::

    byte  0      flags
    bytes 1..2   command id   (high bit may be set as noise)
    bytes 3..6   body length  (top two bits may be set as noise)

Anti-scanning invariants the receiver enforces (both client and server):

* ``flags & 0x57 == 0x57``
* bit 3 of flags differs from bit 31 of the length word
* bit 5 of flags differs from bit 30 of the length word
* bit 7 of flags differs from bit 15 of the command word
"""

from __future__ import annotations

import random
import struct
from dataclasses import dataclass

HEADER_SIZE = 7
BASE_FLAGS = 0x57
_CMD_MSB = 0x8000
_LEN_MSB = 0x80000000
_LEN_BIT30 = 0x40000000
_CMD_MASK = 0x7FFF
_LEN_MASK = 0x3FFFFFFF


@dataclass(frozen=True)
class Header:
    flags: int
    command: int
    length: int


def encode_header(command: int, length: int, *, rng: random.Random | None = None) -> bytes:
    if not 0 <= command <= _CMD_MASK:
        raise ValueError(f"command id out of range: {command}")
    if not 0 <= length <= _LEN_MASK:
        raise ValueError(f"body length out of range: {length}")

    rng = rng or random
    flags = BASE_FLAGS
    cmd = command
    ln = length
    if rng.random() > 0.5:
        flags |= 0x80
    else:
        cmd |= _CMD_MSB
    if rng.random() > 0.5:
        flags |= 0x20
    else:
        ln |= _LEN_BIT30
    if rng.random() > 0.5:
        flags |= 0x08
    else:
        ln |= _LEN_MSB
    return struct.pack(">BHI", flags, cmd, ln)


def decode_header(raw: bytes) -> Header:
    if len(raw) != HEADER_SIZE:
        raise ValueError("header must be exactly 7 bytes")
    flags, cmd_word, len_word = struct.unpack(">BHI", raw)
    if flags & BASE_FLAGS != BASE_FLAGS:
        raise ValueError(f"invalid frame flags 0x{flags:02x}")
    if bool(flags & 0x08) == bool(len_word & _LEN_MSB):
        raise ValueError("header bit3/length bit31 invariant violated")
    if bool(flags & 0x20) == bool(len_word & _LEN_BIT30):
        raise ValueError("header bit5/length bit30 invariant violated")
    if bool(flags & 0x80) == bool(cmd_word & _CMD_MSB):
        raise ValueError("header bit7/command bit15 invariant violated")
    return Header(flags=flags, command=cmd_word & _CMD_MASK, length=len_word & _LEN_MASK)


def frame(command: int, body: bytes) -> bytes:
    return encode_header(command, len(body)) + body
