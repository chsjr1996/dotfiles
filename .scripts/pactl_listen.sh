#! /bin/sh

pactl subscribe | grep --line-buffered "change.*sink" | xargs -n1 $HOME/.config/polybar/scripts/volume-notification.sh &
