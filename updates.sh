#!/bin/bash

update=$(sudo apt update | grep -i "upgradable" | wc -l)
if [[ $update -eq 1 ]]; then
	number=$(sudo apt list --upgradable | wc -l)
	echo "Update:$((number-1))" > /home/$USER/scripts/results/update.txt
else
	echo "Update:0" > /home/$USER/scripts/results/update.txt
fi

