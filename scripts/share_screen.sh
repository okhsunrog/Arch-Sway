#!/bin/bash

if ! lsmod | grep v4l2loopback > /dev/null; then
	echo "Adding v42loopback module to kernel"
	sudo modprobe v4l2loopback
fi

if pgrep wf-recorder > /dev/null || pgrep ffplay > /dev/null
then
	if pgrep ffplay > /dev/null; then
		pkill ffplay > /dev/null
	fi
	if pgrep wf-recorder > /dev/null; then
		pkill wf-recorder > /dev/null
	fi
	notify-send --urgency=low "Screen sharing has been stopped"

else
	echo "1 - Share to camera
Not 1 - share to X11 window
Choose wisely: "                                                                                                                                                              
                read;                                                                                                                                                         
		{
	if [ ${REPLY} = "1" ] ; then
			#Replace with parameters of your monitors
			wf-recorder --muxer=v4l2 --codec=rawvideo --pixel-format=yuv420p --geometry="1366,0 1920x1080" --file=/dev/video2 &
			notify-send --urgency=low "Sharing to camera has been started"
		else
	if ! pgrep wf-recorder > /dev/null; then
				#Replace with parameters of your monitors
		wf-recorder --muxer=v4l2 --codec=rawvideo --file=/dev/video2 --geometry="1366,0 1920x1080" &
	fi
	if ! pgrep ffplay; then
		swaymsg assign [class=ffplay] workspace 11

		unset SDL_VIDEODRIVER
		ffplay /dev/video2 -fflags nobuffer &
		sleep 0.5
		# a hack so FPS is not dropping
		swaymsg [class=ffplay] floating enable
		# swaymsg [class=ffplay] move position 1900 1000
		# swaymsg focus tiling
	fi
	notify-send --urgency=low "Sharing to window has been started"
		fi
} &> /dev/null
fi
