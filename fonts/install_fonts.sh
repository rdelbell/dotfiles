#!/bin/bash
# Install fonts

# Define the source and destination directories
FONT_SRC_DIR="$HOME/dotfiles/fonts"
FONT_DEST_DIR="$HOME/.local/share/fonts"

mkdir -p "$FONT_DEST_DIR"

# Copy only directories from the source to the destination
for dir in "$FONT_SRC_DIR"/*/; do
    cp -r "$dir" "$FONT_DEST_DIR/"
done

# Update the font cache
fc-cache -f -v

echo "Fonts installed successfully!"
