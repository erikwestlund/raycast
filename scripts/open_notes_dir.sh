#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Today’s Notes Folder
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📂
# @raycast.packageName Notes

NOTE_REPO="$HOME/code/notes"
YEAR=$(date +"%Y")
MONTH=$(date +"%m")

FOLDER="$NOTE_REPO/$YEAR/$MONTH"

# Ensure it exists
mkdir -p "$FOLDER"

# Open in Finder
open "$FOLDER"