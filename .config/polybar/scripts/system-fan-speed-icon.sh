#!/bin/sh

# -----
# Colors
#
# - See https://github.com/polybar/polybar/wiki/Formatting#foreground-color-f
# -----
NC='%{F-}'
YELLOW='%{F#ffe700}'
RED='%{F#f00000}'

speed=$(sensors | grep Processor\ Fan | awk '{print $3; exit}')

if [ "$speed" != "" ]; then
    speed_round=$(echo "$speed/1000" | bc -l | LANG=C xargs printf "%.1f\n")
    speed_int=$(echo "$speed/1000" | bc -l | LANG=C xargs printf "%.0f\n")

    if [ $speed_int -ge 3 ]; then
        echo "${RED}"
    elif [ $speed_int -ge 2 ]; then
        echo "${YELLOW}"
    else
        echo "${NC}"
    fi
else
    echo "${NC}"
fi
