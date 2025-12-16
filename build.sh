#!/bin/bash
set -e
if gcc "say.c" -static -o "say"; then
    echo "Build successful: say"
else
    echo "Build failed"
    exit 1
fi
