#!/usr/bin/env bash

theme="style_sidebar"
dir="$HOME/.config/rofi/themes"

rofi -show locate -modi locate:~/Downloads/Apps/Rofi/rofi_locate.sh -theme $dir/"$theme"
