#!/bin/bash

DST="target/"
APPDIR="toucHNews.app"

echo "Building OS X app..."

rm -rf "$DST/$APPDIR"
mkdir "$DST/$APPDIR/"
mkdir "$DST/$APPDIR/Contents/"
mkdir "$DST/$APPDIR/Contents/Resources/"
mkdir "$DST/$APPDIR/Contents/MacOS/"

cp -a target/debug/toucHNews "$DST/$APPDIR/Contents/MacOS/"

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
echo "Done!"
