#!/bin/bash

# Change desktop wallpaper automatically without repetition
# randomizing with feh resulted in repetition. Thus this script! (o_o)
filename_array=( $( ls ~/Pictures/.wall/ | sort --random-sort ) ) 
function traverse {
for file in "${filename_array[@]}";do
	magick convert ~/Pictures/.wall/$file -fill black -colorize 50% transition.bg
	feh --bg-scale transition.bg
	feh --bg-fill ~/Pictures/.wall/"$file"
	sleep 10m
	magick convert ~/Pictures/.wall/$file -fill black -colorize 50% transition.bg
	feh --bg-scale transition.bg
done
}

while true; do
       traverse	
done
