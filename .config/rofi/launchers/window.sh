#!/usr/bin/env bash

theme="style_sidebar"
dir="$HOME/.config/rofi/themes"

rofi -no-lazy-grab -show window -modi window -matching glob -theme $dir/"$theme"
