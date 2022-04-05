#!/usr/bin/env bash

TMPFILE=$(mktemp avoicerecordingXXXXXXXX --suffix ".wav" -p /dev/shm)
notify-send "Recording Started"
arecord -f S16_LE -c 1 -r16000 $TMPFILE 2> /dev/null
(
	source $HOME/tmp/deepspeech-venv/bin/activate
	deepspeech --model $HOME/tmp/deepspeech-venv/deepspeech-0.9.3-models.pbmm --scorer $HOME/tmp/deepspeech-venv/deepspeech-0.9.3-models.scorer --audio $TMPFILE
) 2>/dev/null | xclip -i -se c -r
xdotool key 0xffe3+0x0076 #ctrl+v
rm $TMPFILE
