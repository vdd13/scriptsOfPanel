#!/bin/bash

text=$'\u2800'

for file in /home/$USER/scripts/results/*
do
  for line in $(cat $file)
    do
        text+="$line"
	text+=$'\u2800'
    done
done
text+="|""$(date +" %F %R ")"
echo $text

