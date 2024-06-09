#!/bin/bash

img=$(ls ~/Pictures/wallpaper | shuf | head -n 1)

dim=$(identify -format "%w %h" ~/Pictures/wallpaper/$img 2>/dev/null)

width=$(echo $dim | cut -d " " -f1)
height=$(echo $dim | cut -d " " -f2)

if [ $height -gt $width ]; then
    feh --bg-max ~/Pictures/wallpaper/$img
else 
    feh --bg-fill ~/Pictures/wallpaper/$img
fi
