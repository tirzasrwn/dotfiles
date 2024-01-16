#!/bin/bash
#
SCRIPT_PATH="/tmp/cht.sh"

# Download cht.sh script if not exists
if [ ! -f "$SCRIPT_PATH" ]; then
  curl -sSL https://cht.sh/:cht.sh > "$SCRIPT_PATH"
fi

read -p "enter query: " query
tmux neww bash -c "bash $SCRIPT_PATH $query | less -SR"
