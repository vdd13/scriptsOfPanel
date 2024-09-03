#!/bin/bash

highest=0
celcius=$'\xe2\x84\x83'

for file in /sys/class/thermal/thermal_zone*/temp
do 
  for line in $(cat $file)
    do
	if [[ $highest -lt $line ]]; then
		highest=$line
	fi
    done
done

cutted=$( printf "%2.2s\n" $highest )
combine=$cutted$celcius
echo $combine > /home/$USER/scripts/results/temp.txt

