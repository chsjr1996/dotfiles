#!/usr/bin/env bash

themesDir="$HOME/.config/rofi/themes"
theme="style_gruvbox"

CM_LAUNCHER=rofi clipmenu -no-lazy-grab -theme $themesDir/"$theme" -p Clipboard
