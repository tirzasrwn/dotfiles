#!/bin/bash

CONFIG_DIR="$HOME/.config"

cp -frv $CONFIG_DIR/dunst ./
cp -frv $CONFIG_DIR/fish/conf.d/readme.md ./fish/conf.d/
cp -frv $CONFIG_DIR/fish/conf.d/user_config.fish ./fish/conf.d/
cp -frv $CONFIG_DIR/i3 ./
cp -frv $CONFIG_DIR/kitty ./
cp -frv $CONFIG_DIR/polybar ./
cp -frv $CONFIG_DIR/rofi ./

