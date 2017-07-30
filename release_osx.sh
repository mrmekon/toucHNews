#!/bin/bash

APP="toucHNews"
DST="target/"
APPDIR="toucHNews.app"

echo "Building OS X app..."

cargo run --release && pkill "$APP"

(cd "$DST" && zip -r9 "$APP.zip" "$APPDIR" && md5 "$APP.zip" > "$APP.md5")

echo "Done!"
