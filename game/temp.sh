#!/bin/sh
for (( i = 0; i < $1; i++ )); do
		xdotool mousemove 206 203 click 1;
           sleep 2s;
        xdotool mousemove 423 207 click 1;
           sleep 2s;
done