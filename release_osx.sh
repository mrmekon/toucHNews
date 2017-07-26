#!/bin/bash

APP="toucHNews"
DST="target/"
APPDIR="toucHNews.app"

echo "Building OS X app..."

cargo build --release

rm -rf "$DST/$APPDIR"
rm -rf "$DST/$APP.zip"
rm -rf "$DST/$APP.md5"
mkdir "$DST/$APPDIR/"
mkdir "$DST/$APPDIR/Contents/"
mkdir "$DST/$APPDIR/Contents/Resources/"
mkdir "$DST/$APPDIR/Contents/MacOS/"

cp -a "target/release/toucHNews" "$DST/$APPDIR/Contents/MacOS/"

(cd icon && ./gen_iconset.sh)
cp -a icon/toucHNews.icns "$DST/$APPDIR/Contents/Resources/"

strip -u -r "$DST/$APPDIR/Contents/MacOS/toucHNews"

cat > "$DST/$APPDIR/Contents/Info.plist" << EOF
{
   CFBundleName = toucHNews;
   CFBundleDisplayName = toucHNews;
   CFBundleIdentifier = "com.trevorbentley.toucHNews";
   CFBundleExecutable = toucHNews;
   CFBundleIconFile = "toucHNews.icns";

   CFBundleVersion = "0.0.2";
   CFBundleInfoDictionaryVersion = "6.0";
   CFBundlePackageType = APPL;
   CFBundleSignature = xxxx;

   LSMinimumSystemVersion = "10.10.0";
}
EOF

(cd "$DST" && zip -r9 "$APP.zip" "$APPDIR" && md5 "$APP.zip" > "$APP.md5")

echo "Done!"
