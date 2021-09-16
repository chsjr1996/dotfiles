#!/usr/bin/env bash

theme="style_sidebar"
dir="$HOME/.config/rofi/themes"

rofi -no-lazy-grab -show filebrowser -modi filebrowser -theme $dir/"$theme"
