#!/bin/bash

echo "hello world..."

echo "delete all fonts..."
#rm -rf /var/www/onlyoffice/documentserver/core-fonts/
rm -rf /usr/share/fonts/X11
rm -rf /usr/share/fonts/truetype/dejavu
rm -rf /usr/share/fonts/truetype/liberation
rm -rf /usr/share/fonts/truetype/msttcorefonts
#rm -rf /usr/share/fonts/truetype/

#echo "copy my fonts"
#auto-mapped...

echo "replace 3 app.js files..."
cp /var/lib/onlyoffice/doc-app.js /var/www/onlyoffice/documentserver/web-apps/apps/documenteditor/main/app.js
cp /var/lib/onlyoffice/ppt-app.js /var/www/onlyoffice/documentserver/web-apps/apps/presentationeditor/main/app.js
cp /var/lib/onlyoffice/sheet-app.js /var/www/onlyoffice/documentserver/web-apps/apps/spreadsheeteditor/main/app.js