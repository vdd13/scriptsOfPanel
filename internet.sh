!/bin/bash

internet=$( curl -Is https://github.com/ | grep 200 | wc -l )
if [[ internet -eq 1 ]]; then
	echo ᯤ > /home/$USER/scripts/results/internet.txt
else 
	> /home/$USER/scripts/results/internet.txt
fi
