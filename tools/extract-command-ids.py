#!/usr/bin/env python3
"""Extract command ids from Wormix serializer sources.

Two modes:
  readable  — sources are named (1.26.0 / 1.61.7): look for getCommandId() { return N; }
  obfuscated— sources are mangled (1.63.3): the getter is `§!S§()` and usually
              returns a constant of another class; constants are resolved from
              a map built over the whole export.

Usage:
  extract-command-ids.py --sources DIR --mode readable   [--out ids.json]
  extract-command-ids.py --sources DIR --mode obfuscated [--out ids.json]
"""
from __future__ import annotations

import argparse
import collections
import json
import pathlib
import re

CONST_RE = re.compile(r"static\s+const\s+(\S+?)\s*(?::\s*\w+\s*)?=\s*(\d+)")
READABLE_RE = re.compile(r"function getCommandId\(\)\s*:\s*uint\s*\{\s*return\s+(\d+)\s*;")
OBF_RE = re.compile(r"function §!S§\(\)\s*:\s*uint\s*\{(.*?)\n\s*\}", re.S)


def constants(root: pathlib.Path) -> dict[str, dict[str, int]]:
    out: dict[str, collections.Counter] = collections.defaultdict(collections.Counter)
    for path in root.rglob("*.as"):
        text = path.read_text(errors="ignore")
        cls = re.search(r"class\s+(\S+)", text)
        if not cls:
            continue
        for name, value in CONST_RE.findall(text):
            out[cls.group(1)].setdefault(name, int(value))
    return dict(out)


def readable(root: pathlib.Path) -> dict[int, str]:
    ids = {}
    for path in root.rglob("*.as"):
        m = READABLE_RE.search(path.read_text(errors="ignore"))
        if m:
            ids[int(m.group(1))] = path.stem
    return ids


def obfuscated(root: pathlib.Path) -> tuple[dict[int, str], list[tuple[str, str, str]]]:
    table = constants(root)
    ids, unresolved = {}, []
    for path in root.rglob("*.as"):
        text = path.read_text(errors="ignore")
        m = OBF_RE.search(text)
        if not m:
            continue
        body = m.group(1)
        direct = re.search(r"return\s+(\d+)\s*;", body)
        if direct:
            ids[int(direct.group(1))] = path.stem
            continue
        ref = re.search(r"return\s+(\S+?)\.(\S+?)\s*;", body)
        if not ref:
            unresolved.append((path.stem, "", ""))
            continue
        value = table.get(ref.group(1), {}).get(ref.group(2))
        if value is None:
            unresolved.append((path.stem, ref.group(1), ref.group(2)))
        else:
            ids[value] = path.stem
    return ids, unresolved


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--sources", required=True, type=pathlib.Path)
    ap.add_argument("--mode", required=True, choices=("readable", "obfuscated"))
    ap.add_argument("--out", type=pathlib.Path)
    args = ap.parse_args()

    unresolved: list = []
    if args.mode == "readable":
        ids = readable(args.sources)
    else:
        ids, unresolved = obfuscated(args.sources)

    print(f"ids: {len(ids)}  unresolved: {len(unresolved)}")
    for item in unresolved[:20]:
        print("  unresolved", item)
    if args.out:
        args.out.write_text(
            json.dumps({"mode": args.mode, "count": len(ids),
                        "ids": {str(k): v for k, v in sorted(ids.items())},
                        "unresolved": unresolved},
                       ensure_ascii=False, indent=1)
        )
        print("written", args.out)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
