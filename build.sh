#!/bin/bash
# Makes it ready to be uploaded

cd ./src

# version number of the extension
version=`eval cat manifest.json | grep "version" | cut -d \" -f 4`

# compressing
zip flick-zoom-chrome_$version.zip *
mv flick-zoom-chrome_$version.zip ../bin
cd ..