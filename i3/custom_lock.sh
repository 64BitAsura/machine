#!/bin/bash
ICON=$HOME/.config/i3/lock.png
BG=$HOME/Pictures/minimal-deer.png
TMPBG=$HOME/.config/i3/bg.png
#scrot $HOME/Pictures/face_drawing_1600x1200.jpg
convert $BG $TMPBG
convert $TMPBG -resize 2000x1500 $TMPBG
