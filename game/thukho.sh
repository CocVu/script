eval $(xdotool getmouselocation --shell)
xdotool mousemove $((X)) $((Y+190)) click 1;
sleep 0.5s;

for (( k = 0; k < 4; k++ )); do
	for (( i = 0; i < 5; i++ )); do
		for (( j = 0; j < 6; j++ )); do
			xdotool mousemove $((X+j*38)) $((Y+i*38));
			sleep 0.4s;
			xdotool click 1;
		done
	done
	xdotool mousemove $((X)) $((Y+190)) click 1;
	sleep 0.5s;

done