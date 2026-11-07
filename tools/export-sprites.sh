#!/usr/bin/env bash
# Export SWF sprite animations (each DefineSprite -> one animated file).
#   usage: export-sprites.sh <version> <glob-under-swf-dir>   e.g.
#          export-sprites.sh 1.61.7 'data/common/chars/*.swf'
#          export-sprites.sh 1.61.7 'data/common/bosses/*.swf'
# Output: packs/<ver>/<same path>/sprites/<id>_<class>.<ext>
set -u
VER="${1:-1.61.7}"
GLOB="${2:-data/common/chars/*.swf}"
FORMAT="${SPRITE_FORMAT:-webp_animated}"
JOBS="${JOBS:-4}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
FFDEC="${FFDEC:-$HOME/.local/share/ffdec/ffdec.jar}"
SRC="$ROOT/swf/$VER"
LOG="$ROOT/packs/_logs"; mkdir -p "$LOG"

one() {
  local f="$1" rel name dst
  rel="${f#$SRC/}"; name="${rel%.swf}"
  dst="$ROOT/packs/$VER/${name#data/}/sprites"
  mkdir -p "$dst"
  java -jar "$FFDEC" -format "sprite:$FORMAT" -export sprite "$dst" "$f" \
    >"$LOG/$(echo "$name" | tr '/' '_').sprites.log" 2>&1
  echo "sprites $rel -> $(find "$dst" -type f | wc -l) files"
}
export -f one; export SRC ROOT VER FFDEC LOG FORMAT

# shellcheck disable=SC2086
find $SRC/$GLOB -print0 | xargs -0 -P "$JOBS" -I{} bash -c 'one "$@"' _ {}
