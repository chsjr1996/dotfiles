#!/bin/sh

# -----
# Colors
#
# - See https://github.com/polybar/polybar/wiki/Formatting#foreground-color-f
# -----
NC='%{F-}'
YELLOW='%{F#ffe700}'
RED='%{F#f00000}'

icon="battery"
appName="changeVolume"

function get_current_level() {
  current_level=$(cat /sys/class/power_supply/BAT0/capacity)
}

function send_notification {
  dunstify -i "$icon" -a "$appName" -r 2177 -u critical "Warning! Current battery is $current_level%"
}

function online() {
  get_current_level

  if [ $current_level -eq 100 ]; then
    echo "${NC}"
  else
    echo "${YELLOW}"
  fi
}

function offline() {
  get_current_level

  if [ $current_level -le 50 ]; then
    send_notification
  fi
  echo "${RED}"
}


case $1 in
  status)
    acpi -a | grep "on-line" &> /dev/null && online || offline
    ;;
  current)
    get_current_level
    dunstify -i "$icon" -a "$appName" -r 2178 -u normal -h string:x-dunst-stack-tag:mybattery -h int:value:"$current_level" "Battery: $current_level%" 
    ;;
esac
