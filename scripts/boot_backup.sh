#!/bin/bash
#Run as root!

if [ "$(whoami)" != "root" ]; then
        echo "Script must be run as root!"
        exit 255
else
echo "Running..."
mount -a
sleep 1
cd /root
mkdir tempmnt
fallocate -l 50M boot.img
losetup --partscan --find --show boot.img
cat <<EOF | gdisk /dev/loop0
o
y
n
1



c
EFI
w
y
EOF
mkfs.vfat -n EFI /dev/loop0p1
mount /dev/loop0p1 tempmnt
cp -r /boot/* tempmnt/
umount tempmnt
losetup -d /dev/loop0
rm -rf tempmnt
tar --remove-files -cvjf boot.tar.bz2 boot.img
mv boot.tar.bz2 "/home/danila/real_home/bootbackups/boot_backup_$(uname -r)_$(date +"%d_%m_%Y_%H_%M").tar.bz2"
chown danila:danila /home/danila/real_home/bootbackups/boot_backup_*
chmod 644 /home/danila/real_home/bootbackups/boot_backup_*
fi


