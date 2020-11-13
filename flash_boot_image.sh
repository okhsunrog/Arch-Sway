#!/bin/bash
#Run as root!
#If your usb stick isn't /dev/sdb don't forget to edit!

if [ "$(whoami)" != "root" ]; then
        echo "Script must be run as root!"
        exit 255
else
umount /dev/sdb*
umount /dev/sdb
echo "Flashing image..."
pathiso=$(ls /arch*.iso) 
dd if=$pathiso of=/dev/sdb bs=4M status=progress oflag=sync
echo "Finished"
fi
