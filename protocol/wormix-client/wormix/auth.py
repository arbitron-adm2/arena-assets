"""Auth: obtain the per-page ``auth_key`` the game server expects.

Observed flow (see endpoint_inventory.json):

1. The player is logged in on https://wormixtest.com (PHP session cookie).
2. The game page ``/bingo?version=new`` embeds a launcher iframe whose query
   string carries the VK-style FlashVars: ``api_id``, ``viewer_id``,
   ``auth_key``, ``api_url`` …
3. The client sends ``viewer_id`` + ``auth_key`` in the LOGIN packet; the game
   server validates the key against the site.

``auth_key`` is issued per page load, so a stale key produces
``LOGIN_ERROR``/``ERROR_AUTH_KEY``. We always fetch a fresh one.

No credential is ever written to the repository: cookies are read from a file
outside the repo (default ``~/.config/wormix-client/cookies.json``, the
browser-export format: ``{"cookies": [{"name", "value", "domain", "path"}]}``).
"""

from __future__ import annotations

import json
import os
import re
import urllib.parse
from dataclasses import dataclass, field
from pathlib import Path

from .exceptions import AuthKeyError, ConfigError

GAME_PAGE = "https://wormixtest.com/bingo?version=new"
DEFAULT_COOKIE_PATHS = (
    Path.home() / ".config/wormix-client/cookies.json",
    Path.home() / "Projects/wormix-browser/private/website-cookies.json",
)

_LAUNCH_RE = re.compile(r"preloader(?:\.html)?\?([^'\"\s]*api_url=[^'\"\s]+)")
_COOKIE_NAMES = {"login", "token", "mdd", "rembo", "altCalc"}


@dataclass
class FlashVars:
    """The launcher parameters, mapping the keys the client itself reads."""

    viewer_id: int
    auth_key: str
    api_id: str = ""
    api_url: str = ""
    secret: str = ""
    social_code: int = 1
    raw: dict[str, str] = field(default_factory=dict)

    @property
    def social_id(self) -> str:
        return str(self.viewer_id)


def cookie_path(explicit: str | os.PathLike | None = None) -> Path:
    if explicit:
        p = Path(explicit).expanduser()
        if not p.exists():
            raise ConfigError(f"cookie file not found: {p}")
        return p
    for p in DEFAULT_COOKIE_PATHS:
        if p.exists():
            return p
    raise ConfigError(
        "no cookie file found; export the wormixtest.com browser cookies to "
        f"{DEFAULT_COOKIE_PATHS[0]} (JSON: {{\"cookies\": [{{name,value,domain,path}}]}})"
    )


def parse_launcher_query(query: str) -> FlashVars:
    params = {k: v[0] for k, v in urllib.parse.parse_qs(query, keep_blank_values=True).items()}
    try:
        viewer_id = int(params["viewer_id"])
    except (KeyError, ValueError) as exc:
        raise AuthKeyError("launcher query has no usable viewer_id") from exc
    auth_key = params.get("auth_key", "")
    if not auth_key:
        raise AuthKeyError("launcher query has no auth_key (site session expired?)")
    return FlashVars(
        viewer_id=viewer_id,
        auth_key=auth_key,
        api_id=params.get("api_id", ""),
        api_url=params.get("api_url", ""),
        secret=params.get("secret", ""),
        social_code=1,
        raw=params,
    )


def fetch_flashvars(cookies_file: str | os.PathLike | None = None, *, timeout: float = 25.0) -> FlashVars:
    """Load the game page with the saved site session and read the launcher URL."""
    from curl_cffi import requests as curl_requests  # imported lazily: only needed here

    path = cookie_path(cookies_file)
    try:
        data = json.loads(path.read_text())
    except (OSError, json.JSONDecodeError) as exc:
        raise ConfigError(f"cannot read cookie file {path}: {exc}") from exc

    session = curl_requests.Session(impersonate="chrome")
    for cookie in data.get("cookies", []):
        if cookie.get("name") in _COOKIE_NAMES:
            session.cookies.set(
                cookie["name"], cookie["value"], domain=cookie.get("domain"), path=cookie.get("path", "/")
            )

    try:
        response = session.get(GAME_PAGE, timeout=timeout)
    except Exception as exc:  # network-level failure from curl_cffi
        raise AuthKeyError(f"cannot load {GAME_PAGE}: {exc}") from exc
    if response.status_code != 200:
        raise AuthKeyError(f"{GAME_PAGE} answered HTTP {response.status_code}")

    match = _LAUNCH_RE.search(response.text)
    if not match:
        raise AuthKeyError(
            "game launcher not found on the page - the site session is probably "
            "logged out (log in again in the browser and re-export cookies)"
        )
    return parse_launcher_query(match.group(1))
