  #!/bin/bash
  cd ~/Videos
  youtube-dl -f "(bestvideo[height<=1080][vcodec=vp9]/bestvideo[height<=1080][vcodec*=avc1])+bestaudio/best" $(wl-paste) && notify-send --urgency=low "Done! The video is downloaded to ~/Videos" || notify-send --urgency=low "Error!"
