#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title New Nova Scratch File
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 💡
# @raycast.packageName Notes

# Create a temp file (macOS will auto-clean later)
TMP_FILE=$(mktemp -t nova-scratch-XXXXXX.md)

# Open in Nova
open -a "Nova" "$TMP_FILE"