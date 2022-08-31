#!/bin/sh

# script I made myself
# Quick and dirty script to see if I am connected to internet
dwm_internet () {
	WIFI=
	ping -c 1 8.8.8.8 >&/dev/null
	if [ $? -eq 0 ]; then
		WIFI='NET UP'
	fi
}

dwm_internet
