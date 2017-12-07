#!/bin/sh
temp="#FFFFFF"
eval $(xdotool getmouselocation --shell)

for (( k = 0; k < $1; k++ )); do
	xdotool mousemove $X $((Y+190)) click 1;
	sleep .4s
	for (( j = 0; j < 5; j++ )); do

		for (( i = 0; i < 6; i++ )); do
		xdotool mousemove $((X+i*38)) $((Y+j*38)) click 1;
			sleep .4s
			
			IMAGE=`import -window root -depth 1 -crop 1x1+$((X+45+i*38))+$((Y+68+j*38)) txt:-`
			COLOR=`echo $IMAGE | grep -om1 '#\w\+'`

			if [ "$COLOR" = $temp ]; then
				xdotool mousemove $((X+41+i*38)) $((Y+90+j*38)) click 1;
				sleep 0.2s;
			else
				xdotool mousemove $((X+55+i*38)) $((Y+65+j*38)) click 1;
				sleep 0.2s;
				# echo $COLOR
			fi			
			xdotool mousemove 634 522 click 1;
				sleep 0.2s;
		done	
	done	
done