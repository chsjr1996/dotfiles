#!/usr/bin/env bash

themesDir="$HOME/.config/rofi/themes"
theme="style_gruvbox"

rofi -show calc -modi calc -theme $themesDir/"$theme" 
