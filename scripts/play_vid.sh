#!/bin/bash
notify-send "Loading video..."
mpv --ytdl-format="(299/137/298/136/135/134/133)+bestaudio" "$(wl-paste)" || notify-send "mpv has closed"
