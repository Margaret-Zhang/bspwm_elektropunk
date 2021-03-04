#!/usr/bin/env sh

CONFIG_FILE='~/.config/polybar/config.ini'

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	MONITOR=$m polybar --reload logo --config=${CONFIG_FILE} &
	MONITOR=$m polybar --reload left --config=${CONFIG_FILE} &
	#MONITOR=$m polybar --reload music --config=${CONFIG_FILE} &
    MONITOR=$m polybar --reload right --config=${CONFIG_FILE} &
	done
else
	polybar logo --config=${CONFIG_FILE} &
	polybar left --config=${CONFIG_FILE} &
	#polybar music --config=${CONFIG_FILE} &
	polybar right --config=${CONFIG_FILE} &
fi
