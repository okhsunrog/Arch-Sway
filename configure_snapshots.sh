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
btrfs subvolume delete /.snapshots
btrfs subvolume delete /home/.snapshots
mkdir /.snapshots
mkdir /home/.snapshots
mount -a
chmod 750 /.snapshots
chmod 750 /home/.snapshots
sed -i 's/TIMELINE_CREATE="yes"/TIMELINE_CREATE="no"/g' /etc/snapper/configs/root
sed -i 's/TIMELINE_CREATE="yes"/TIMELINE_CREATE="no"/g' /etc/snapper/configs/home
fi
