#!/bin/bash

power=$(cat /sys/class/power_supply/AC/online)

if [[ power -eq 1 ]]; then
	echo "🗲" > /home/$USER/scripts/results/power.txt
else
	> /home/$USER/scripts/results/power.txt
fi

