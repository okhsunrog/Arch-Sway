#!/bin/bash
notify-send --urgency=low "Downloading video..."
cd ~/scripts
kitty -e "./download_vid_simple.sh"
