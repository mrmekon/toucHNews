#!/bin/bash
mkdir toucHNews.iconset
sips -z 16 16     hn1024.png --out toucHNews.iconset/icon_16x16.png
sips -z 32 32     hn1024.png --out toucHNews.iconset/icon_16x16@2x.png
sips -z 32 32     hn1024.png --out toucHNews.iconset/icon_32x32.png
sips -z 64 64     hn1024.png --out toucHNews.iconset/icon_32x32@2x.png
sips -z 128 128   hn1024.png --out toucHNews.iconset/icon_128x128.png
sips -z 256 256   hn1024.png --out toucHNews.iconset/icon_128x128@2x.png
sips -z 256 256   hn1024.png --out toucHNews.iconset/icon_256x256.png
sips -z 512 512   hn1024.png --out toucHNews.iconset/icon_256x256@2x.png
sips -z 512 512   hn1024.png --out toucHNews.iconset/icon_512x512.png
cp hn1024.png toucHNews.iconset/icon_512x512@2x.png
iconutil -c icns toucHNews.iconset
rm -R toucHNews.iconset
