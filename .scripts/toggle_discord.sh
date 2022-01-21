#! /bin/sh


function is_discord_visible() {
    xdotool getactivewindow getwindowclassname | grep discord > /dev/null
}


if is_discord_visible ; then
    xdotool getactivewindow windowminimize
else
    wmctrl -a discord
fi
