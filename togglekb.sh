#!/bin/bash

PID=`pidof matchbox-keyboard`
export DISPLAY=:0

if [ ! -e $PID ]; then
	kill $PID
else
	matchbox-keyboard &
fi

