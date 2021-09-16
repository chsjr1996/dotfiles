#!/usr/bin/env bash

theme="style_sidebar"
dir="$HOME/.config/rofi/themes"

rofimoji --skin-tone neutral --clipboarder xclip --selector-args "-no-lazy-grab -theme $dir/"$theme""
