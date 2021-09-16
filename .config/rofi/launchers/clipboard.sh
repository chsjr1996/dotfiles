#!/usr/bin/env bash

theme="style_sidebar"
dir="$HOME/.config/rofi/themes"

CM_LAUNCHER=rofi clipmenu -no-lazy-grab -theme $dir/"$theme" -p Clipboard
