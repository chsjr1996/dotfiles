#!/usr/bin/env bash

function get_brightness {
  light | cut -d '.' -f 1
}

function send_notification {
  icon="brightnesssettings"
  brightness=$(get_brightness)
  appName="changeBrightness"
  dunstify -i "$icon" -r 5555 -a "$appName" -u normal -h string:x-dunst-stack-tag:mybrightness -h int:value:"$brightness" "Brightness: $brightness%"
}

case $1 in
  up)
    # increase the backlight by 5%
    light -A 5
    send_notification
    ;;
  down)
    # decrease the backlight by 5%
    light -U 5
    send_notification
    ;;
esac
