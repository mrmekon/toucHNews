#!/bin/bash

APP="toucHNews"
DST="target/"
APPDIR="toucHNews.app"
RELEASE=`git describe --abbrev=0`

echo "Building OS X app $RELEASE..."

cargo run --release && pkill "$APP"

(cd "$DST" && zip -r9 "$RELEASE.zip" "$APPDIR" && md5 "$RELEASE.zip" > "$RELEASE.md5")

echo "Done!"
