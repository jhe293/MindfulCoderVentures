#!/bin/zsh
# Description: A simple CLI tool to create Markdown notes from a template. Automatically formats the title and inserts the current date.
# Usage: newnote <folder> <note-title>
# Example:        newnote aws cloud-billing
# Notes:          - Uses a template file named 'template-note.md'
# ============================================================================
newnote() {
  folder="$1"
  raw_title="$2"
  today=$(date +%F)
  filename="${today}-${raw_title}.md"
  base_path="$HOME/Documents/jiawei-note" # You could change to your favorite path on your machine

  # Format title: replace hyphens with spaces and capitalize each word
  formatted_title=$(echo "$raw_title" | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)}1')

  # Create note from template
  mkdir -p "$base_path/$folder"
  cp "$base_path/template-note.md" "$base_path/$folder/$filename"

  # Replace title and date using sed (better for macOS)
  sed -i '' "s/^# .*/# $formatted_title/" "$base_path/$folder/$filename"
  sed -i '' "s|^\*\*Date\*\*: .*|**Date**: $today  |" "$base_path/$folder/$filename"

  echo "✅ Created $folder/$filename"
  open -a "Visual Studio Code" "$base_path/$folder/$filename"
}
