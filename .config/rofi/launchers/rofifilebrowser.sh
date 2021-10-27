#!/usr/bin/env bash

themesDir="$HOME/.config/rofi/themes"
theme="style_gruvbox"

rofi -no-lazy-grab -show filebrowser -modi filebrowser -theme $themesDir/"$theme"
