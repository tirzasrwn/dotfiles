#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config.ini
# polybar example 2>&1 | tee -a /tmp/polybar.log & disown
for mon in $(polybar --list-monitors | cut -d":" -f1); do
	MONITOR=$mon polybar -q main -c "$DIR"/config.ini 2>&1 | tee -a /tmp/polybar.log & disown
done

echo "Polybar launched..."
