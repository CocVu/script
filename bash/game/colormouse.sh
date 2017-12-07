eval $(xdotool getmouselocation --shell)
echo $X $Y
IMAGE=`import -window root -depth 1 -crop 1x1+$((X+i*45))+$((Y+j*68)) txt:-`
COLOR=`echo $IMAGE | grep -om1 '#\w\+'`
echo $COLOR
