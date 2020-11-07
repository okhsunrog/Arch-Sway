#!/bin/bash
#Run as root!

if [ "$(whoami)" != "root" ]; then
        echo "Script must be run as root!"
        exit 255
else
umount -R /.snapshots
umount -R /home/.snapshots
rm -r /.snapshots
rm -r /home/.snapshots
snapper -c root create-config /
snapper -c home create-config /home
mount -av
echo "Don't forget to configure Automatic timeline snapshots in /etc/snapper/configs/{root,home}"
fi
