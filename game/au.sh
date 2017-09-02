#!/bin/sh

# function fcomp() {
#     awk -v n1=$1 -v n2=$2 'BEGIN {echo n1 echo n2}'
# }
div=$(echo "scale=3; $1 " | bc -l)
echo $div