  #!/bin/bash
  cd ~/Videos
  youtube-dl -f "(299/137/298/136/135/134/133)+bestaudio" $(wl-paste) && notify-send  "Done! The video is downloaded to ~/Videos" || notify-send "Error!"
