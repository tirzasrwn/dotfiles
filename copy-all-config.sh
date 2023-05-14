#!/bin/bash

CONFIG_DIR="$HOME/.config"

cp -frv $CONFIG_DIR/dunst ./.config/
cp -frv $CONFIG_DIR/fish/conf.d/readme.md ./fish/conf.d/.config/
cp -frv $CONFIG_DIR/fish/conf.d/user_config.fish ./fish/conf.d/.config/
cp -frv $CONFIG_DIR/i3 ./.config/
cp -frv $CONFIG_DIR/kitty ./.config/
cp -frv $CONFIG_DIR/polybar ./.config/
cp -frv $CONFIG_DIR/rofi ./.config/
cp -frv $CONFIG_DIR/screenkey.json ./.config/

