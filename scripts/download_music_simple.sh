#!/bin/bash
cd ~/Music
youtube-dl -f "251" --extract-audio --audio-format "opus" $(wl-paste) && notify-send --urgency=low "Done! The song is downloaded to ~/Music" || notify-send --urgency=low "Error!"
