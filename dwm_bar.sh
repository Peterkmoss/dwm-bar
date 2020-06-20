#!/bin/sh

LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

export IDENTIFIER="unicode"

export SEP1="["
export SEP2="]"

. "$DIR/bar-functions/dwm_resources.sh"
. "$DIR/bar-functions/dwm_pulse.sh"
. "$DIR/bar-functions/dwm_networkmanager.sh"
. "$DIR/bar-functions/dwm_keyboard.sh"
. "$DIR/bar-functions/dwm_date.sh"

while true
do
	STR="$(dwm_resources)$(dwm_pulse)$(dwm_networkmanager)$(dwm_keyboard)$(dwm_date)"
	xsetroot -name "$(echo $STR)"
    sleep 1
done
