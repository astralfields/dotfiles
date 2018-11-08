#!/bin/bash

# simple lock script
# takes a screenshot, pixelizes it and applies lock icon
# then sets as background for i3lock

icon="$HOME/.wallpapers/locklol.png"
tmpbg='/tmp/lockscreen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg"
