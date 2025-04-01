#!/bin/bash

# Path to the cht.sh script
SCRIPT_PATH="/tmp/cht.sh"

# Download cht.sh script if it doesn't exist
if [ ! -f "$SCRIPT_PATH" ]; then
	curl -sSL https://cht.sh/:cht.sh >"$SCRIPT_PATH"
fi

# Read the list from the specified file
LIST="$HOME/.local/bin/tmux-cht-list"

# Select a language using fzf
selected=$(cat "$LIST" | fzf --print-query --prompt="ch.sh/" | tail -1)
if [[ -z $selected ]]; then
	exit 0
fi

# Format the query for the URL
query=$(echo "$query" | tr ' ' '+')

# Open a new tmux window and execute the command
tmux neww bash -c "bash $SCRIPT_PATH $selected | less -SR"
