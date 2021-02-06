#!/bin/bash
notify-send --urgency=low "Downloading song..."
cd ~/scripts
kitty -e "./download_music_simple.sh" 
