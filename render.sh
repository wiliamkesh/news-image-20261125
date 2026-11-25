#!/bin/sh
# render.sh — draw the front page and capture it as entry.png (1024x1024).
#
# First generator/build-page.mjs writes page.html (the whole broadsheet,
# HTML + inline SVG, no photographs). Then headless Chromium screenshots
# it. In this environment the screenshot viewport comes out shorter than
# the requested window height, so we shoot at 1024x1200 and keep the top
# 1024 rows, which hold the entire 1024px page.
set -e
cd "$(dirname "$0")"
node generator/build-page.mjs
CHROME="${CHROME:-$HOME/.cloakbrowser/chromium-146.0.7680.177.5/chrome}"
rm -rf /tmp/chrome-world-oneday-render
"$CHROME" --headless=new --disable-gpu --no-sandbox --hide-scrollbars \
  --force-device-scale-factor=1 --user-data-dir=/tmp/chrome-world-oneday-render \
  --window-size=1024,1200 --screenshot=/tmp/world-oneday-raw.png \
  "file://$PWD/page.html"
python3 -c "
from PIL import Image
im = Image.open('/tmp/world-oneday-raw.png')
assert im.size[0] == 1024 and im.size[1] >= 1024
im.crop((0, 0, 1024, 1024)).save('entry.png')
print('entry.png:', __import__('os').path.getsize('entry.png'), 'bytes')
"
