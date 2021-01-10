#!/bin/zsh

# This is the ffmpeg command the the screencast shortcut in i3 will run

# Check if screencast is already running and kill it in this case
if [[ $(pgrep -a ffmpeg | grep screencast | awk '{print $1}') ]]
	then
		kill $(pgrep -a ffmpeg | grep screencast | awk '{print $1}')
		notify-send "Scrrencasting" "$(echo -e "Screencast recording ended")"
	else
		# Define the filename based on the date
		fname='screencast_'$(date +%+4Y%m%d)
		
		# Picks a file name for the output file based on availability
		
		if [[ -f $HOME/$fname'.mkv' ]]
			then
				n=1
				while [[ -f $HOME/$fname\_$n'.mkv' ]]
					do
						n=$(qalc -t $n + 1)
					done
				fname=$HOME/$fname\_$n'.mkv'
				echo $n
			else
				fname=$HOME/$fname'.mkv'
		fi
	# notify that the recording is starting:
	notify-send "Screencasting" "$(echo -e "Screen recording started.\nPress Super+Shift+s to stop.\nRecording will be located in:\n$fname")"

# the actual ffmpeg command:

ffmpeg -y \
-f x11grab \
-s $(xdpyinfo | grep dimensions | awk '{print $2;}') \
-i :0.0 \
-f alsa -i default \
-c:v ffvhuff -r 30 -c:a flac $fname

fi
