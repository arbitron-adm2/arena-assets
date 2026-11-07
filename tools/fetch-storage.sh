#!/usr/bin/env bash
# Pull extra runtime resources (audio, avatars) that live outside the SWF packs.
#   usage: fetch-storage.sh
set -u
BASE="https://tesla.rmart.ru/engine/storage"
ROOT="$(cd "$(dirname "$0")/.." && pwd)/swf/1.61.7/storage"

get() { # url dest
  mkdir -p "$(dirname "$2")"
  code=$(curl -s -m 120 -o "$2" -w '%{http_code}' "$1")
  if [ "$code" = "200" ]; then echo "ok   $(basename "$2") ($(stat -c%s "$2") B)"
  else rm -f "$2"; echo "miss $1"; fi
}

# audio: names come from data/resconfigs/resconfig.xml (<sound path="../storage/sound/...">)
get "$BASE/sound/sounds_1.53.swf"   "$ROOT/sound/sounds_1.53.swf"
get "$BASE/sound/music_theme_1.swf" "$ROOT/sound/music_theme_1.swf"

# avatars: ../storage/social/<network>/avatar/Avatar_<n>.swf
for n in $(seq 1 120); do
  get "$BASE/social/vkontakte/avatar/Avatar_$n.swf" "$ROOT/social/vkontakte/avatar/Avatar_$n.swf"
done
