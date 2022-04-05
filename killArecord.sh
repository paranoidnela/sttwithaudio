#!/bin/sh
notify-send "Recording Stopped"
killall -s SIGINT arecord
