#!/usr/bin/env bash

theme="style_sidebar"
dir="$HOME/.config/rofi/themes"

rofi -show calc -modi calc -theme $dir/"$theme" 
