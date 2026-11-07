"""Unofficial WormixTest client (reconstructed from the 1.26.0 Flash client)."""

from .auth import FlashVars, fetch_flashvars
from .client import DEFAULT_HOST, DEFAULT_PORT, DEFAULT_VERSION, Session, WormixClient
from .exceptions import (
    AuthKeyError,
    ConfigError,
    ConnectionFailed,
    LoginRejected,
    ProtocolError,
    Timeout,
    WormixError,
)

__all__ = [
    "FlashVars",
    "fetch_flashvars",
    "WormixClient",
    "Session",
    "DEFAULT_HOST",
    "DEFAULT_PORT",
    "DEFAULT_VERSION",
    "WormixError",
    "ConfigError",
    "AuthKeyError",
    "ConnectionFailed",
    "LoginRejected",
    "ProtocolError",
    "Timeout",
]
__version__ = "0.1.0"
