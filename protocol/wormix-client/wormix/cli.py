"""Command line interface: one subcommand per client method.

Read paths run freely. Anything that changes account state (chat, raw sends)
prints the exact frame it *would* send and requires ``--confirm``.
"""

from __future__ import annotations

import json as jsonlib
import sys

import click

from . import messages
from .auth import FlashVars, fetch_flashvars
from .client import DEFAULT_HOST, DEFAULT_PORT, DEFAULT_VERSION, WormixClient
from .exceptions import AuthKeyError, ConfigError, ConnectionFailed, LoginRejected, ProtocolError, Timeout, WormixError


class Context:
    def __init__(self, flashvars: FlashVars, host: str, port: int, timeout: float, version: tuple[int, int, int, int]):
        self.flashvars = flashvars
        self.host = host
        self.port = port
        self.timeout = timeout
        self.version = version

    def client(self) -> WormixClient:
        return WormixClient(self.flashvars, host=self.host, port=self.port, timeout=self.timeout, version=self.version)


def _parse_version(value: str) -> tuple[int, int, int, int]:
    parts = [int(p) for p in value.split(".")]
    if len(parts) != 4:
        raise click.BadParameter("version must be 4 dot-separated numbers, e.g. 1.26.0.99")
    return tuple(parts)  # type: ignore[return-value]


def _emit(ctx: Context, payload) -> None:
    if ctx.json:
        click.echo(jsonlib.dumps(payload, ensure_ascii=False, indent=2))
        return
    if isinstance(payload, (dict, list)):
        click.echo(jsonlib.dumps(payload, ensure_ascii=False, indent=2))
    else:
        click.echo(payload)


@click.group(context_settings={"help_option_names": ["-h", "--help"]})
@click.option("--host", default=DEFAULT_HOST, show_default=True, help="Game server host")
@click.option("--port", default=DEFAULT_PORT, show_default=True, type=int, help="Game server port")
@click.option("--auth-key", default=None, help="Use this auth_key instead of fetching a fresh one from the site")
@click.option("--viewer-id", default=None, type=int, help="Account id that belongs to --auth-key")
@click.option("--cookies", default=None, help="Cookie export JSON (default: ~/.config/wormix-client/cookies.json)")
@click.option("--timeout", default=10.0, show_default=True, type=float)
@click.option("--version", "client_version", default=".".join(map(str, DEFAULT_VERSION)), show_default=True)
@click.option("--json", "json_out", is_flag=True, help="Machine-readable output")
@click.pass_context
def main(ctx, host, port, auth_key, viewer_id, cookies, timeout, client_version, json_out):
    """Unofficial WormixTest protocol client.

    \b
    Examples:
      wormix world
      wormix profile 145085
      wormix friends --page 0
      wormix rating --type 0 --wager 0
    """
    ctx.ensure_object(dict)
    ctx.obj = Context(
        flashvars=None,  # resolved lazily so `--help` never touches the network
        host=host,
        port=port,
        timeout=timeout,
        version=_parse_version(client_version),
    )
    ctx.obj.json = json_out
    ctx.obj.auth_key = auth_key
    ctx.obj.viewer_id = viewer_id
    ctx.obj.cookies = cookies


def _resolve(ctx) -> Context:
    obj: Context = ctx.obj
    if obj.flashvars is None:
        if obj.auth_key:
            if not obj.viewer_id:
                raise click.ClickException("--auth-key requires --viewer-id")
            obj.flashvars = FlashVars(viewer_id=obj.viewer_id, auth_key=obj.auth_key)
        else:
            obj.flashvars = fetch_flashvars(obj.cookies)
    return obj


def _run(ctx, action):
    obj = _resolve(ctx)
    try:
        with obj.client() as client:
            return action(client)
    except AuthKeyError as exc:
        raise click.ClickException(f"auth: {exc}\n  -> log in on wormixtest.com in your browser and re-export cookies")
    except ConfigError as exc:
        raise click.ClickException(f"config: {exc}")
    except LoginRejected as exc:
        raise click.ClickException(
            f"server rejected the login ({exc}).\n  -> the auth_key is stale; rerun without --auth-key to fetch a fresh one"
        )
    except ConnectionFailed as exc:
        raise click.ClickException(f"network: {exc}\n  -> check that {obj.host}:{obj.port} is reachable")
    except Timeout as exc:
        raise click.ClickException(f"timeout: {exc}")
    except ProtocolError as exc:
        raise click.ClickException(f"protocol: {exc}")
    except WormixError as exc:
        raise click.ClickException(str(exc))


@main.command()
@click.pass_context
def world(ctx):
    """Log in and print the account summary."""
    _emit(ctx.obj, _run(ctx, lambda c: c.world_state()))


@main.command()
@click.argument("ids", nargs=-1)
@click.pass_context
def profile(ctx, ids):
    """Fetch full profiles (unit list, weapons, clan) by social id."""
    result = _run(ctx, lambda c: c.profiles(list(ids) or None))
    _emit(ctx.obj, result)


@main.command()
@click.option("--page", default=0, show_default=True, type=int)
@click.pass_context
def friends(ctx, page):
    """One page of the friend list (20 profiles per page)."""
    _emit(ctx.obj, _run(ctx, lambda c: c.friend_list_page(page)))


@main.command()
@click.option("--type", "rating_type", default=0, show_default=True, type=int, help="0 = overall, 1 = daily")
@click.option("--wager", default=0, show_default=True, type=int)
@click.pass_context
def rating(ctx, rating_type, wager):
    """Rating table for a rating type / battle wager."""
    _emit(ctx.obj, _run(ctx, lambda c: c.rating(rating_type, wager)))


@main.command()
@click.argument("profile_id", required=False, type=int)
@click.pass_context
def reagents(ctx, profile_id):
    """Reagent counts for a profile (default: own)."""
    _emit(ctx.obj, _run(ctx, lambda c: c.reagents(profile_id)))


@main.command()
@click.pass_context
def coliseum(ctx):
    """Gladiator coliseum state (open flag, record, team, candidates)."""
    _emit(ctx.obj, _run(ctx, lambda c: c.coliseum_state()))


@main.command()
@click.pass_context
def arena(ctx):
    """Arena state: battles count, missions, boss availability."""
    _emit(ctx.obj, _run(ctx, lambda c: c.arena()))


@main.command()
@click.pass_context
def ping(ctx):
    """Send PING and report the round-trip time."""
    import time

    def action(client):
        started = time.monotonic()
        ok = client.ping()
        return {"pong": ok, "rtt_ms": round((time.monotonic() - started) * 1000, 1)}

    _emit(ctx.obj, _run(ctx, action))


@main.command()
@click.argument("text")
@click.option("--confirm", is_flag=True, help="Actually send (this posts a real chat message)")
@click.pass_context
def chat(ctx, text, confirm):
    """Send a chat message (write; requires --confirm)."""
    if not confirm:
        click.echo(f"plan: would send chat message {text!r} via command {messages.CMD_CHAT_MESSAGE}")
        click.echo("re-run with --confirm to send it")
        return
    _emit(ctx.obj, _run(ctx, lambda c: {"result": c.send_chat(text)}))


@main.command("raw")
@click.argument("command", type=int)
@click.option("--hex", "body_hex", default="", help="Body bytes as hex")
@click.option("--expect", "expect", default=None, type=int, help="Response command id (default: command + 10000)")
@click.option("--confirm", is_flag=True, help="Actually send (unknown command, server state may change)")
@click.pass_context
def raw_command(ctx, command, body_hex, expect, confirm):
    """Send an arbitrary command id (write; requires --confirm)."""
    body = bytes.fromhex(body_hex) if body_hex else b""
    if not confirm:
        click.echo(f"plan: would send command {command} ({messages.command_name(command)}) with {len(body)} body bytes")
        click.echo("re-run with --confirm to send it")
        return

    def action(client):
        reply = client.connection.request(
            command, body, expect=expect if expect is not None else command + 10000, timeout=ctx.obj.timeout
        )
        return {"command": reply.command, "name": reply.name, "body_hex": reply.body.hex()}

    _emit(ctx.obj, _run(ctx, action))


if __name__ == "__main__":  # pragma: no cover
    main()
