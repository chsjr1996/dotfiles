#!/usr/bin/env bash

scriptsDir="$HOME/.config/rofi/scripts"
script="rofi_search_script.sh"
themesDir="$HOME/.config/rofi/themes"
theme="style_gruvbox"

rofi -show locate -modi locate:$scriptsDir/"$script" -theme $themesDir/"$theme"
