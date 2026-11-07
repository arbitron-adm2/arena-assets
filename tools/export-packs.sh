#!/usr/bin/env bash
# Export every SWF asset pack of one client version into media form.
#   usage: export-packs.sh <version> [jobs]
set -u
VER="${1:-1.61.7}"
JOBS="${2:-6}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
FFDEC="${FFDEC:-/home/fsdf1234/Projects/_tmp/wormix-browser/ffdec/ffdec.jar}"
SRC="$ROOT/swf/$VER"
OUT="$ROOT/packs/$VER"
LOG="$ROOT/packs/_logs"
mkdir -p "$OUT" "$LOG"

export_one() {
  local f="$1" rel name dst
  rel="${f#$SRC/}"
  name="${rel%.swf}"
  dst="$OUT/${name/#data\//}"
  mkdir -p "$dst"
  java -jar "$FFDEC" -format shape:svg,image:png,sound:mp3,font:ttf,script:as,morphshape:svg,text:plain \
       -export shape,image,sound,font,script,binaryData,symbolClass,morphshape,text "$dst" "$f" \
       >"$LOG/$(echo "$name" | tr '/' '_').svg.log" 2>&1
  java -jar "$FFDEC" -format shape:png \
       -export shape "$dst" "$f" \
       >"$LOG/$(echo "$name" | tr '/' '_').png.log" 2>&1
  echo "done $rel"
}
export -f export_one
export SRC OUT FFDEC LOG

find "$SRC" -name '*.swf' -print0 | xargs -0 -P "$JOBS" -I{} bash -c 'export_one "$@"' _ {}
