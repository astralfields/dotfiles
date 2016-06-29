#!/bin/bash

time=60

while true; do
	if [[ $(cat /sys/class/power_supply/BAT0/capacity) <16 ]]; then
			feh --bg-fill /media/Daten/Pictures/ocean-glow.png
	else
			feh --bg-fill /media/Daten/Pictures/ocean.jpg
	fi

	sleep $time
done
