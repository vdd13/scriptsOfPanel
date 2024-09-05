#!/bin/bash

internet=$( ping -c 3 github.com | head -3 | grep time | wc -l )
if [[ $internet > 0 ]]; then
	echo ᯤ > /home/$USER/scripts/results/internet.txt
else 
	> /home/$USER/scripts/results/internet.txt
fi
