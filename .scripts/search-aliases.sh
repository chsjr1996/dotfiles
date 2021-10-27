#!/bin/bash
entry=$(cat - | grep -E -i -o ".*=" | tr -d "=")
xdotool key ctrl+l
xdotool type $entry
xdotool key return