# Architecture

## Module map

```
src/wormix/
├── framing.py   7-byte header encode/decode + invariants (from §9$L§ class)
├── codec.py     Flash IDataInput/IDataOutput emulation, md5 trailer sign/verify
├── auth.py      site session -> fresh FlashVars (viewer_id + auth_key)
├── transport.py TCP socket, reader thread, per-command futures, throttle, retry
├── messages.py  command ids + request encoders + response decoders
├── structures.py composite structures (profile, team member, clan, gladiator…)
├── client.py    WormixClient facade (login + one method per command)
├── exceptions.py typed errors (never a bare None on failure)
└── cli.py       click CLI, one subcommand per client method
```

The layering is deliberate: `codec`/`framing` know nothing about the game,
`messages`/`structures` know the wire layout but nothing about sockets,
`transport` knows sockets but nothing about game semantics, `client` composes
them. Swapping the signing secret or adding a command touches exactly one file.

## Frame layout

```
byte 0      flags           base 0x57; bits 7/5/3 set as noise
bytes 1-2   command id      bit 15 may be set as noise (mask 0x7fff)
bytes 3-6   body length     bits 31/30 may be set as noise (mask 0x3fffffff)
body        payload + 16-byte md5(body || secret)
```

Receiver invariants (`framing.decode_header` enforces the same ones the client
and server do): `flags & 0x57 == 0x57`, and flag bit 3 / bit 5 / bit 7 must
*differ* from length bit 31 / bit 30 / command bit 15. `framing.encode_header`
randomises those three pairs exactly like the SWF, so frames are not
byte-constant.

The trailer is `md5(body || secret)` where the secret is the static
`<REDACTED_PROTOCOL_SECRET>`. Verification is confirmed against live
`ENTER_ACCOUNT` replies; the client refuses a login reply whose trailer does
not verify (`ProtocolError`).

## Dispatcher

The game server is not strictly request/response: it interleaves unsolicited
`ShowSystemMessage` frames with replies. `GameConnection.request()` registers a
waiter per expected command id *before* sending, so a reply that arrives early
is not lost; unmatched frames go to `unsolicited` (bounded deque) and optionally
to an `on_message` callback. Timeouts raise `Timeout`; a socket close while
waiting raises `ConnectionFailed` with the underlying reason — never an
`AssertionError` or a `None` body.

## Throttle and retry

- `min_interval` (default 50 ms) is enforced inside the send lock; measured
  throughput was far higher (see README), so the default is deliberately
  polite rather than maximal.
- Connect is retried (`max_retries`, exponential backoff). Frames are never
  auto-retried: re-sending a mutating command after a partial write would
  duplicate an action. A caller that wants idempotent retries can re-login.
- `curl_cffi` with Chrome impersonation is used for the one HTTP call (the game
  page). The TCP side has no TLS, so no fingerprint concerns there.

## Why 1.26.0

The WormixTest server accepts 1.26.0 through 1.61.7 logins. 1.61.7 is shipped
name-obfuscated (`§8#o§` style) and its `ENTER_ACCOUNT` layout is larger; the
1.26.0 SWF is readable, so every field mapping in this repo is transcribed
from named classes (`LoginBinarySerializer`, `EnterAccountBinarySerializer`,
`UserProfileStructureBinarySerializer`, …) instead of guessed.

## Not built

Battle/PvP/clan/shop flows need the turn state machine and are mutating; they
are cataloged in `endpoint_inventory.json` but intentionally not implemented.
`raw` exists as an escape hatch with a hard `--confirm` gate.
