#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Create Timestamped Note
# @raycast.mode silent
# @raycast.argument1 { "type": "text", "placeholder": "Note title" }

# Optional parameters:
# @raycast.icon 📝
# @raycast.packageName Notes

# Config
NOTE_REPO="$HOME/code/notes"

# Timestamp pieces
NOW=$(date +"%Y-%m-%d_%H%M%S")
YEAR=$(date +"%Y")
MONTH=$(date +"%m")

# Sanitize title into CamelCase
TITLE=$(echo "$1" | sed 's/[^a-zA-Z0-9]/ /g' | awk '{for (i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)}1' | tr -d ' ')

# Full path
DIR="$NOTE_REPO/$YEAR/$MONTH"
FILENAME="${NOW}-${TITLE}.md"
FULL_PATH="$DIR/$FILENAME"

# Ensure directory exists
mkdir -p "$DIR"

# Write file
echo "# $1" > "$FULL_PATH"
echo "" >> "$FULL_PATH"

# Open in Nova
open -a "Nova" "$FULL_PATH"
