#! /usr/bin/bash

export DISPLAY=:0
export XAUTHORITY=/home/henrique/.Xauthority

function connect(){
    xrandr --output HDMI-1 --primary --auto --left-of eDP-1 && nitrogen --restore
}

function disconnect(){
    xrandr --output HDMI-1 --off && nitrogen --restore
}

xrandr | grep "HDMI-1 connected" &> /dev/null && connect || disconnect
