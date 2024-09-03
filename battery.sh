#!/bin/bash
BATTERY="BAT:""$(cat /sys/class/power_supply/BAT0/capacity)""%"
echo $BATTERY > /home/$USER/scripts/results/zzbattery.txt
