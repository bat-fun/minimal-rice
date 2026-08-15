#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpaper"

while true; do
    WALL=$(find "$WALLPAPER_DIR" -type f \( \
        -iname "*.jpg" -o \
        -iname "*.jpeg" -o \
        -iname "*.png" -o \
        -iname "*.webp" \
    \) | shuf -n 1)

    # hyprctl hyprpaper unload all
    # hyprctl hyprpaper preload "$WALL"
    hyprctl hyprpaper wallpaper ",$WALL"

    sleep 180
done