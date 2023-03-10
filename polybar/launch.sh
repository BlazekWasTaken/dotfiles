#!/bin/bash
# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q bar1 -c "$DIR"/config.ini &
polybar -q bar2 -c "$DIR"/config.ini &
polybar -q bar3 -c "$DIR"/config.ini &
