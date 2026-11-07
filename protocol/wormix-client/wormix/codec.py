"""Wire codec.

The Wormix protocol is Adobe-Flash ``ByteArray`` output: big-endian scalars,
``writeUTF`` (unsigned short byte length + UTF-8 bytes), no padding.

Every packet body carries a 16-byte MD5 trailer over ``body + secret``:

    trailer = md5(body || secret)

The secret is a static string shipped in the client. The 1.26/1.61 clients use
two values depending on whether the launcher passes ``_secretKey`` in
FlashVars; the WormixTest server proved to accept and to *sign replies with*
``DEFAULT_SECRET`` (a reply signature only verified against that value).
"""

from __future__ import annotations

import hashlib
import struct
from typing import Iterable

DEFAULT_SECRET = b"<REDACTED_PROTOCOL_SECRET>"
# Value compiled into the client's §,##§ class; kept for reference/experiments.
CLIENT_STATIC_SECRET = b"<REDACTED_CLIENT_SECRET>"


class Reader:
    """Big-endian reader mirroring ``flash.utils.IDataInput``."""

    __slots__ = ("buf", "pos")

    def __init__(self, buf: bytes):
        self.buf = buf
        self.pos = 0

    @property
    def remaining(self) -> int:
        return len(self.buf) - self.pos

    def take(self, n: int) -> bytes:
        if n < 0 or self.pos + n > len(self.buf):
            raise ValueError(f"short read: need {n} bytes at {self.pos} of {len(self.buf)}")
        out = self.buf[self.pos : self.pos + n]
        self.pos += n
        return out

    def u8(self) -> int:
        return self.take(1)[0]

    def i8(self) -> int:
        return struct.unpack(">b", self.take(1))[0]

    def boolean(self) -> bool:
        return self.u8() != 0

    def u16(self) -> int:
        return struct.unpack(">H", self.take(2))[0]

    def i16(self) -> int:
        return struct.unpack(">h", self.take(2))[0]

    def u32(self) -> int:
        return struct.unpack(">I", self.take(4))[0]

    def i32(self) -> int:
        return struct.unpack(">i", self.take(4))[0]

    def utf(self) -> str:
        return self.take(self.u16()).decode("utf-8", "replace")

    def u16_list(self) -> list[int]:
        return [self.u16() for _ in range(self.u16())]

    def i16_list(self) -> list[int]:
        return [self.i16() for _ in range(self.u16())]

    def u32_list(self) -> list[int]:
        return [self.u32() for _ in range(self.u16())]


class Writer:
    """Big-endian writer mirroring ``flash.utils.IDataOutput``."""

    def __init__(self):
        self._parts: list[bytes] = []

    def u8(self, v: int) -> "Writer":
        self._parts.append(struct.pack(">B", v & 0xFF))
        return self

    def i8(self, v: int) -> "Writer":
        self._parts.append(struct.pack(">b", v))
        return self

    def boolean(self, v: bool) -> "Writer":
        return self.u8(1 if v else 0)

    def u16(self, v: int) -> "Writer":
        self._parts.append(struct.pack(">H", v & 0xFFFF))
        return self

    def i16(self, v: int) -> "Writer":
        self._parts.append(struct.pack(">h", v))
        return self

    def u32(self, v: int) -> "Writer":
        self._parts.append(struct.pack(">I", v & 0xFFFFFFFF))
        return self

    def i32(self, v: int) -> "Writer":
        self._parts.append(struct.pack(">i", v))
        return self

    def utf(self, s: str) -> "Writer":
        raw = s.encode("utf-8")
        if len(raw) > 0xFFFF:
            raise ValueError("UTF string too long for the wire format")
        return self.u16(len(raw)).raw(raw)

    def raw(self, data: bytes) -> "Writer":
        self._parts.append(data)
        return self

    def short_list(self, values: Iterable[int]) -> "Writer":
        values = list(values)
        self.u16(len(values))
        for v in values:
            self.i16(v)
        return self

    def build(self) -> bytes:
        return b"".join(self._parts)


def sign(body: bytes, secret: bytes = DEFAULT_SECRET) -> bytes:
    return body + hashlib.md5(body + secret).digest()


def verify_signed(body_with_trailer: bytes, secret: bytes = DEFAULT_SECRET) -> bool:
    if len(body_with_trailer) < 16:
        return False
    body, trailer = body_with_trailer[:-16], body_with_trailer[-16:]
    return hashlib.md5(body + secret).digest() == trailer


def strip_trailer(body_with_trailer: bytes) -> bytes:
    return body_with_trailer[:-16]
