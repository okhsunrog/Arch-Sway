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
git clone https://github.com/okhsunrog/Arch-Sway.git /root/archlive/airootfs/root/ 
rm /root/archlive/airootfs/root/create_boot_image.sh
rm /root/archlive/airootfs/root/flash_boot_image.sh
rm -rf /root/archlive/airootfs/root/.git
rm -rf /tmp/archiso-tmp
mkdir /root/out
echo "Creating image..."
rm /arch*.iso
mkarchiso -v -w /tmp/archiso-tmp -o / /root/archlive
ipath=$(ls /arch*.iso)
rm -rf /root/archlive /tmp/archiso-tmp
echo "Finished"
echo "The image's path is: $ipath"
fi

