#!/usr/bin/env bash

themesDir="$HOME/.config/rofi/themes"
theme="style_gruvbox"

rofi -no-lazy-grab -show drun -modi drun -theme $themesDir/"$theme"
