if [[ $1 == "%s" ]]; then
	for (( i = 0; i < 100000; i++ )); do
		# clear;
		sleep .01s;
		echo $((i/6000)) $(((i%6000)/100)) $((i %100));
	done
elif [[ $1 == "s" ]]; then
	for (( i = 0; i < 100000; i++ )); do
		clear;
		echo $((i/60)) $((i%60));
		sleep 1s;		
	done
else 
	echo "option %s or s [CocVu]";
fi