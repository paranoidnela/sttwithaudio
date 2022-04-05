#!/usr/bin/env bash
if [[ $(ls /dev/shm) == *"bypass"*  ]]
then
rm /dev/shm/bypass
notify-send "Audio Enabled"
else
touch /dev/shm/bypass
notify-send "Audio Disabled"
fi
