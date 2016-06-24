#!/bin/sh
set -eu
LUVI_VERSION=2.7.3
LIT_VERSION=3.4.1

LUVI_ARCH=`uname -s`_`uname -m`
LUVI_URL="https://github.com/luvit/luvi/releases/download/v$LUVI_VERSION/luvi-regular-$LUVI_ARCH"
LIT_URL="http://www.ryanliptak.com/misc/lit.zip"

# Download Files
echo "Downloading $LUVI_URL to luvi"
curl -L $LUVI_URL > luvi
chmod +x luvi
echo "Downloading $LIT_URL to lit.zip"
curl -L $LIT_URL > lit.zip

# Create lit using lit
./luvi lit.zip -- make lit.zip

# Cleanup
rm -f lit.zip
