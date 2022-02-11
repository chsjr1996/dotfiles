#!/bin/sh

function is_paused() {
  dunstctl is-paused
}

function status() {
  if [ $(is_paused) = "true" ]; then
    echo ""
  else
    echo ""
  fi
}

function toggle() {
  if [ $(is_paused) = "true" ]; then
    dunstctl set-paused false
  else
    dunstctl set-paused true
  fi
  status
}

case "$1" in
    --toggle)
        toggle
        ;;
    *)
        status
        ;;
esac
