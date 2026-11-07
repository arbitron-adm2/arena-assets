"""TCP transport: framing, MD5 signing, dispatch, throttle, retry.

One socket, one reader thread. The server answers asynchronously (a Ping can be
answered by a Pong *after* an unrelated ShowSystemMessage), so responses are
matched by command id through per-command waiter queues; anything unmatched
lands in :attr:`GameConnection.unsolicited` for the caller to inspect.
"""

from __future__ import annotations

import collections
import socket
import threading
import time
from dataclasses import dataclass
from typing import Callable

from . import framing, messages
from .codec import DEFAULT_SECRET, sign
from .exceptions import ConnectionFailed, ProtocolError, Timeout

MAX_BODY = 4 * 1024 * 1024


@dataclass
class Message:
    command: int
    body: bytes

    @property
    def name(self) -> str:
        return messages.command_name(self.command)


class _Waiter:
    __slots__ = ("event", "body", "error")

    def __init__(self):
        self.event = threading.Event()
        self.body: bytes | None = None
        self.error: BaseException | None = None


class GameConnection:
    def __init__(
        self,
        host: str = "wormixtest.ru",
        port: int = 49197,
        *,
        secret: bytes = DEFAULT_SECRET,
        connect_timeout: float = 10.0,
        min_interval: float = 0.05,
        max_retries: int = 2,
        on_message: Callable[[Message], None] | None = None,
    ):
        self.host = host
        self.port = port
        self.secret = secret
        self.connect_timeout = connect_timeout
        self.min_interval = min_interval
        self.max_retries = max_retries
        self.on_message = on_message

        self.unsolicited: collections.deque[Message] = collections.deque(maxlen=256)
        self._sock: socket.socket | None = None
        self._reader: threading.Thread | None = None
        self._send_lock = threading.Lock()
        self._pending: dict[int, list[_Waiter]] = {}
        self._pending_lock = threading.Lock()
        self._last_send = 0.0
        self._closed = threading.Event()
        self._failure: BaseException | None = None
        self.sent_bytes = 0
        self.received_bytes = 0

    # -- lifecycle ---------------------------------------------------------
    def connect(self) -> "GameConnection":
        last: Exception | None = None
        for attempt in range(self.max_retries + 1):
            try:
                self._sock = socket.create_connection((self.host, self.port), timeout=self.connect_timeout)
                self._sock.settimeout(None)
                break
            except OSError as exc:
                last = exc
                if attempt < self.max_retries:
                    time.sleep(0.5 * (attempt + 1))
        else:
            raise ConnectionFailed(f"cannot connect to {self.host}:{self.port}: {last}")

        self._closed.clear()
        self._failure = None
        self._reader = threading.Thread(target=self._read_loop, name=f"wormix-reader-{self.port}", daemon=True)
        self._reader.start()
        return self

    def close(self) -> None:
        self._closed.set()
        sock = self._sock
        self._sock = None
        if sock is not None:
            try:
                sock.shutdown(socket.SHUT_RDWR)
            except OSError:
                pass
            try:
                sock.close()
            except OSError:
                pass
        if self._reader and self._reader.is_alive() and self._reader is not threading.current_thread():
            self._reader.join(timeout=2)

    def __enter__(self) -> "GameConnection":
        return self.connect()

    def __exit__(self, *exc_info) -> None:
        self.close()

    @property
    def closed(self) -> bool:
        return self._closed.is_set()

    # -- sending -----------------------------------------------------------
    def send(self, command: int, body: bytes) -> None:
        if self.closed or self._sock is None:
            raise ConnectionFailed("connection is closed" + (f" ({self._failure})" if self._failure else ""))
        packet = framing.frame(command, sign(body, self.secret))
        with self._send_lock:
            wait = self.min_interval - (time.monotonic() - self._last_send)
            if wait > 0:
                time.sleep(wait)
            try:
                self._sock.sendall(packet)
            except OSError as exc:
                raise ConnectionFailed(f"send failed on command {command}: {exc}") from exc
            self._last_send = time.monotonic()
            self.sent_bytes += len(packet)

    def request(
        self,
        command: int,
        body: bytes = b"",
        *,
        expect: int | tuple[int, ...] | None = None,
        timeout: float = 10.0,
    ) -> Message:
        """Send a command and wait for one of ``expect`` (default ``command + 10000``)."""
        if expect is None:
            expect = command + 10000
        expects = (expect,) if isinstance(expect, int) else tuple(expect)

        waiters = {cmd: _Waiter() for cmd in expects}
        with self._pending_lock:
            for cmd, waiter in waiters.items():
                self._pending.setdefault(cmd, []).append(waiter)
        try:
            self.send(command, body)
            deadline = time.monotonic() + timeout
            while True:
                for cmd, waiter in waiters.items():
                    if waiter.event.is_set():
                        if waiter.body is None:
                            reason = waiter.error or self._failure or "connection closed by server"
                            raise ConnectionFailed(f"connection lost while waiting for {messages.command_name(command)}: {reason}")
                        return Message(cmd, waiter.body)
                remaining = deadline - time.monotonic()
                if remaining <= 0:
                    raise Timeout(f"no reply to {messages.command_name(command)} ({command}) within {timeout}s")
                time.sleep(min(0.01, remaining))
        finally:
            with self._pending_lock:
                for cmd, waiter in waiters.items():
                    queue = self._pending.get(cmd)
                    if queue and waiter in queue:
                        queue.remove(waiter)
                    if queue is not None and not queue:
                        self._pending.pop(cmd, None)

    # -- receiving ---------------------------------------------------------
    def _read_loop(self) -> None:
        sock = self._sock
        assert sock is not None
        try:
            while not self._closed.is_set():
                header = self._read_exactly(sock, framing.HEADER_SIZE)
                parsed = framing.decode_header(header)
                if parsed.length > MAX_BODY:
                    raise ProtocolError(f"refusing body of {parsed.length} bytes")
                body = self._read_exactly(sock, parsed.length) if parsed.length else b""
                self.received_bytes += framing.HEADER_SIZE + parsed.length
                self._dispatch(Message(parsed.command, body))
        except (OSError, EOFError, ValueError) as exc:
            if not self._closed.is_set():
                self._failure = exc
        finally:
            self._closed.set()
            with self._pending_lock:
                queues = list(self._pending.values())
            for queue in queues:
                for waiter in queue:
                    if waiter.body is None:
                        waiter.error = self._failure or EOFError("connection closed by server")
                    waiter.event.set()

    @staticmethod
    def _read_exactly(sock: socket.socket, n: int) -> bytes:
        chunks = []
        remaining = n
        while remaining:
            chunk = sock.recv(remaining)
            if not chunk:
                raise EOFError("connection closed by server")
            chunks.append(chunk)
            remaining -= len(chunk)
        return b"".join(chunks)

    def _dispatch(self, message: Message) -> None:
        waiter = None
        with self._pending_lock:
            queue = self._pending.get(message.command)
            if queue:
                waiter = queue.pop(0)
                if not queue:
                    self._pending.pop(message.command, None)
        if waiter is not None:
            waiter.body = message.body
            waiter.event.set()
            return
        self.unsolicited.append(message)
        if self.on_message is not None:
            try:
                self.on_message(message)
            except Exception:  # user callback must never kill the reader
                pass

    # -- convenience -------------------------------------------------------
    def drain_unsolicited(self) -> list[Message]:
        out = list(self.unsolicited)
        self.unsolicited.clear()
        return out
