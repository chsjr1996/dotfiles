#!/bin/sh

speed=$(sensors | grep Processor\ Fan | awk '{print $3; exit}')

if [ "$speed" != "" ]; then
    speed_round=$(echo "$speed/1000" | bc -l | LANG=C xargs printf "%.1f\n")
    echo "$speed_round"
else
   echo "0.0"
fi
