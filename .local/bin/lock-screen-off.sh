#!/bin/bash
swayidle -w  \
	timeout 1 'swaylock -f -c 000000' \
	timeout 2 'swaymsg "output * dpms off"' \
	resume 'swaymsg "output * dpms on"; pkill -nx swayidle'

