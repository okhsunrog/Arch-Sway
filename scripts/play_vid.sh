#!/bin/bash
notify-send --urgency=low "Loading video..."
mpv --ytdl-format="(bestvideo[height<=1080][vcodec=vp9]/bestvideo[height<=1080][vcodec*=avc1])+bestaudio/best" "$(wl-paste)" || notify-send --urgency=low "mpv has closed"
