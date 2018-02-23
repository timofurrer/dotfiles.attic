#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 1; done

# Launch polybars for every connected monitor
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar -c ~/.config/polybar/config.ini bottom &
        MONITOR=$m polybar -c ~/.config/polybar/config.ini top &
    done
else
    polybar -c ~/.config/polybar/config.ini bottom &
    polybar -c ~/.config/polybar/config.ini top &
fi

echo "Bars launched..."
