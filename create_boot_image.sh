#!/bin/bash
#Run as root!
#If your usb stick isn't /dev/sdb don't forget to edit!

if [ "$(whoami)" != "root" ]; then
        echo "Script must be run as root!"
        exit 255
else
echo "Running..."
pacman -S archiso --noconfirm --needed
cp -r /usr/share/archiso/configs/releng /root/archlive
rm -rf /root/archlive/airootfs/root
git clone https://github.com/danila7/arch_btrfs_enc.git /root/archlive/airootfs/root/ 
rm /root/archlive/airootfs/root/create_boot_image.sh
rm -rf /root/archlive/airootfs/root/.git
rm -rf /tmp/archiso-tmp
mkdir /root/out
echo "Creating image..."
mkarchiso -v -w /tmp/archiso-tmp -o /root/out /root/archlive
umount /dev/sdb*
umount /dev/sdb
echo "Flashing image..."
pathiso="/root/out/"$(ls /root/out)
dd if=$pathiso of=/dev/sdb bs=4M status=progress oflag=sync
rm -rf /root/out /root/archlive
echo "Finished"
fi

