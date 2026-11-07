"""Typed errors. No call path returns ``None`` on failure."""


class WormixError(Exception):
    """Base class for every client error."""


class ConfigError(WormixError):
    """Missing or invalid configuration (host, auth key, cookies)."""


class AuthKeyError(WormixError):
    """The site refused to hand out a session (login expired, cookies stale)."""


class ConnectionFailed(WormixError):
    """TCP connect/handshake with the game server failed."""


class ProtocolError(WormixError):
    """Malformed frame or body received from the server."""


class LoginRejected(WormixError):
    """Server answered LOGIN_ERROR (command 10002)."""

    def __init__(self, code: int, message: str = ""):
        self.code = code
        self.message = message
        super().__init__(f"login rejected: code={code} {message}".strip())


class Timeout(WormixError):
    """A response did not arrive in time."""


class RateLimited(WormixError):
    """Local throttle refused to send (caller asked for a burst above the cap)."""
