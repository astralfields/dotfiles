#!/bin/bash

time=60

while true; do
	if [[ $(cat /sys/class/power_supply/BAT0/capacity) = 100 ]]; then
			feh --bg-fill $HOME/.wallpapers/ocean.jpg
	elif [[ $(cat /sys/class/power_supply/BAT0/capacity) < 16 ]]; then
			feh --bg-fill $HOME/.wallpapers/ocean-glow.png
	else
			feh --bg-fill $HOME/.wallpapers/ocean.jpg
	fi

	sleep $time
done
