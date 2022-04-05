#!/usr/bin/env bash
if [[ $(ls /dev/shm) == *"bypass"*  ]]
then
~/sttwithaudio/transcribeNormal.sh
elif [[ $(xprop WM_CLASS -id $(xdotool getactivewindow)) == *"iscord"* ]]
then
~/sttwithaudio/transcribeDiscord.sh
else
~/sttwithaudio/transcribeNormal.sh
fi
