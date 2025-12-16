#!/bin/bash
set -e

# Compile the binary
if gcc "say.c" -static -o "say"; then
    echo "Build successful: say"
else
    echo "Build failed"
    exit 1
fi

# Create package structure
mkdir -p package/bin
cp "say" package/bin/
cp manifest.json package/

# Create .vpk archive
cd package
tar czf "../say.vpk" *
cd ..

echo "Package created: say.vpk"
