# wormix-client

**Unofficial, reverse-engineered client for the WormixTest game protocol.**
Not affiliated with Pragmatix, VK or WormixTest. It talks to the game's own TCP
protocol the way the Flash client does, using your own account session.
Using it may violate the site's terms — that risk is yours to own. The client
is read-first: anything that changes account state is plan-by-default and needs
an explicit flag.

## What works (live-tested 2026-11-07)

| CLI command | Protocol | Result |
|---|---|---|
| `wormix world` | LOGIN(1) → ENTER_ACCOUNT(10001) | full account state parsed: money, rating, units, weapons, clan, missions, friends counters |
| `wormix profile [id]` | GetProfiles(5) → ProfilesResult(10005) | full `UserProfileStructure` per id |
| `wormix ping` | Ping(16) → Pong(10017) | round-trip measured |
| `wormix friends --page N` | GetFriendListPage(18) → 10018 | page of profiles |
| `wormix arena` | GetArena(708) → ArenaResult(10004) | battles count, missions, boss flags, heroic missions |
| `wormix coliseum` | GetColiseumState(110) → 10110 | open flag, win/lose/draw, team + candidates |
| `wormix chat TEXT --confirm` | ChatMessage(51) → 10039 | write path, gated behind `--confirm` |
| `wormix raw CMD --hex … --confirm` | any | escape hatch, gated behind `--confirm` |

`wormix rating` and `wormix reagents` are implemented from the decompiled
codecs but **get no answer** from wormixtest.ru:49197 (see "Not confirmed").

## Quickstart

```bash
python3 -m pip install -e .          # or just use PYTHONPATH=src

# one-time: export your logged-in wormixtest.com cookies to
#   ~/.config/wormix-client/cookies.json
#   {"cookies": [{"name": "login", "value": "…", "domain": ".wormixtest.com", "path": "/"}, …]}

wormix world                 # login + account summary
wormix profile 145085        # any social id
wormix rating --type 0 --wager 0
wormix --json world          # machine-readable
```

Without `pip install`, the repo-root wrapper works the same:
`PYTHONPATH=src python3 cli.py world`.

Options: `--host/--port` (default `wormixtest.ru:49197`), `--auth-key` +
`--viewer-id` to skip the site fetch, `--cookies`, `--timeout`,
`--version 1.26.0.99`.

## How authentication works

1. The site (`https://wormixtest.com/bingo?version=new`) embeds a launcher
   iframe whose query string carries VK-style FlashVars, including a
   **per-page-load `auth_key`**.
2. The game client reads it as `getFlashVars()._masterKey` and sends it inside
   LOGIN: `uint32 id`, `uint32 referrerId`, `writeUTF(authKey)`,
   `int32 version`, `short n` + ids, `byte socialCode`, `short n` + params.
3. The server validates the key against the site. A stale key produces
   `LOGIN_ERROR(10002)` with `ERROR_AUTH_KEY`. Every client run therefore
   fetches a fresh key from the game page with your saved cookies.

Auth tier: **3** (static client secret in the JS/SWF + MD5 chain), layered on
top of a site session cookie. The static secret is
`<REDACTED_PROTOCOL_SECRET>`; it is what the server *signs replies with*
(verified: `md5(body_without_trailer + secret) == trailer` on every
`ENTER_ACCOUNT`).

Every frame body ends with that 16-byte MD5 trailer, and every frame starts
with a 7-byte header whose flag/command/length bits carry anti-scanning
invariants (see `ARCHITECTURE.md`).

## Measured rate limits

`tools/measure_rate_limit.py`, 2026-11-07, `PING(16)` bursts against
`wormixtest.ru:49197`:

| burst | pongs | median RTT |
|---|---|---|
| 1 | 1 | 799 ms |
| 5 | 5 | 761 ms |
| 10 | 10 | 708 ms |
| 20 | 20 | 711 ms |

No throttle signal up to 20 back-to-back frames; the server answers on a
roughly 0.7 s processing tick. The client ships with a conservative
`min_interval = 50 ms` between frames, overridable
(`WormixClient(..., min_interval=0)`). Don't burst it "to be sure" — a shared
game world is behind that socket.

## Not confirmed / not implemented

- **`rating`, `reagents`, and 60+ other client commands**: correct frames are
  built from the decompiled serializers, but WormixTest never answers them
  (4 s window each, all worlds and ports probed). Recorded as
  `unconfirmed: no reply on WormixTest` in `endpoint_inventory.json`.
- **Worlds other than 49197**: 49198 rejects the login (`LOGIN_ERROR`), the
  rest close or stay silent. Only the main world is usable with this account.
- **Battle / PvP / clan / shop / achievements**: serializers are cataloged but
  not implemented — they need multi-step state machines (battle ticks, turn
  protocol) and are mutating.
- **1.61.x clients**: their login is the same, but the server answers with a
  larger profile layout that this client does not parse. Version is
  configurable, parsing is 1.26.0-only.
- **WebSocket / GraphQL**: not applicable — this target is a raw TCP binary
  protocol carried by the site's TSU tunnel, not HTTP.

## Tests

```bash
PYTHONPATH=src pytest -m live tests/ -v
```

The suite shares one TCP session, asserts real parsed values (account id,
money, session key, signature), and pins the two dead commands as
`pytest.raises(Timeout)` so a future server change is noticed.

## Where the protocol knowledge comes from

Decompiled `Wormix.swf` **1.26.0** (JPEXS FFDec), 2193 scripts, 193
`*BinarySerializer` classes — every command id, field order and structure in
this client is transcribed from those classes, with the source file recorded
per entry in `endpoint_inventory.json`. Nothing was guessed from packet dumps
alone; live traffic was used to confirm, not to invent.

This is why 1.26.0 was chosen: the 1.61.7 client is name-obfuscated, while the
1.26.0 client ships readable class names — and the server still accepts it.
