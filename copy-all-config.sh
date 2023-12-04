#!/bin/bash

CONFIG_DIR="$HOME/.config"
LOCAL_DIR="$HOME/.local"

cp -frv $CONFIG_DIR/dunst ./.config/
cp -frv $CONFIG_DIR/fish/conf.d/readme.md ./.config/fish/conf.d/
cp -frv $CONFIG_DIR/fish/conf.d/user_config.fish ./.config/fish/conf.d/
cp -frv $CONFIG_DIR/i3 ./.config/
cp -frv $CONFIG_DIR/kitty ./.config/
cp -frv $CONFIG_DIR/polybar ./.config/
cp -frv $CONFIG_DIR/rofi ./.config/
cp -frv $CONFIG_DIR/screenkey.json ./.config/
cp -frv $HOME/.Xresources ./

cp -frv $LOCAL_DIR/bin ./.local/
cp -frv $HOME/cheatsheet ./
