#!/bin/sh

BAR_HEIGHT=27    # polybar height
MARGIN_TOP=15    # to make space between top and popup
MARGIN_RIGHT=20  # to make space between right and popup
MARGIN_BOTTOM=20 # to make space between bottom and popup
MARGIN_LEFT=20   # to make space between left and popup
YAD_WIDTH=222    # 222 is minimum possible value
YAD_HEIGHT=193   # 193 is minimum possible value
DATE="$(date +"%H:%M")"

case "$1" in
--popup)
    if [ "$(xdotool getwindowfocus getwindowname)" = "yad-calendar" ]; then
        exit 0
    fi

    eval "$(xdotool getmouselocation --shell)"
    eval "$(xdotool getdisplaygeometry --shell)"

    # X
    if [ "$((X + YAD_WIDTH / 2 + MARGIN_RIGHT))" -gt "$WIDTH" ]; then #Right side
        : $((pos_x = WIDTH - YAD_WIDTH - MARGIN_RIGHT))
    elif [ "$((X - YAD_WIDTH / 2 - MARGIN_LEFT))" -lt 0 ]; then #Left side
        : $((pos_x = MARGIN_LEFT))
    else #Center
        : $((pos_x = X - YAD_WIDTH / 2))
    fi

    # Y
    if [ "$Y" -gt "$((HEIGHT / 2))" ]; then #Bottom
        : $((pos_y = HEIGHT - YAD_HEIGHT - BAR_HEIGHT - MARGIN_BOTTOM))
    else #Top
        : $((pos_y = BAR_HEIGHT + MARGIN_TOP))
    fi

    yad --calendar --undecorated --fixed --button "close"  \
        --width="$YAD_WIDTH" --height="$YAD_HEIGHT" --posx="$pos_x" --posy="$pos_y" \
        --title="yad-calendar" --borders=0 >/dev/null &
    ;;
*)
    echo "$DATE"
    ;;
esac
