#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q main -c "$DIR"/config.ini &

# Hide polybar on startup
#while [ 1 ]
#do
    #sleep 1 
    #pid=`ps -ef | grep "polybar" | grep -v grep | awk ' {print $2}'`
    #if [ "$pid"!="" ]
    #then
        #polybar-msg cmd hide 
        #exit 
    #else
        #sleep 1
    #fi
#done

