#!/bin/bash
#Run as root!

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
rm /root/archlive/airootfs/root/flash_boot_image.sh
rm -rf /root/archlive/airootfs/root/.git
rm -rf /tmp/archiso-tmp
mkdir /root/out
echo "Creating image..."
mkarchiso -v -w /tmp/archiso-tmp -o /root/out /root/archlive
pathiso="/root/out/"$(ls /root/out)
tmppath="/tmp/"$(ls /root/out)
rm /tmp/arch*.iso
cp $pathiso /tmp/
rm -rf /root/archlive /root/out
echo "Finished"
echo "The image's path is: $tmppath"
fi

