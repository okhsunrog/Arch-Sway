#!/bin/bash
#Run as root!

if [ "$(whoami)" != "root" ]; then
        echo "Script must be run as root!"
        exit 255
else
umount -R /.snapshots 
rm -r /.snapshots
snapper -c root create-config /
mount -av
echo "Don't forget to configure Automatic timeline snapshots in /etc/snapper/configs/root"
fi
