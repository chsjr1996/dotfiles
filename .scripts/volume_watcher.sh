#! /bin/sh

function get_volume {
  pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
}

function is_not_mute {
  pacmd list-sinks | awk '/muted/ { print $2 }' | grep no > /dev/null
}

function send_notification {
  iconSound="audio-volume-high"
  iconMuted="audio-volume-muted"
  appName="changeVolume"
  if is_not_mute ; then
    volume=$(get_volume)
    dunstify -i $iconSound -r 2593 -a "$appName" -u low -h string:x-dunst-stack-tag:myvolume -h int:value:"$volume" "Volume: $volume%"
  fi
}

current_volume=$(get_volume)

listen() {
    LANG=EN; pactl subscribe | while read -r event; do
        if echo "$event" | grep --line-buffered "change.*sink"; then
            if [[ $current_volume -ne $(get_volume) ]]; then
                current_volume=$(get_volume)
                send_notification
            fi
        fi
    done
}

case "$1" in
    --current)
        send_notification
        ;;
    *)
        listen
        ;;
esac

