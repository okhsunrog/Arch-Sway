#!/bin/bash
#Run as root!
#If your usb stick isn't /dev/sdb don't forget to edit!

if [ "$(whoami)" != "root" ]; then
        echo "Script must be run as root!"
        exit 255
else
echo "Running..."
pacman -S archiso --noconfirm --needed
cd /root
cp -r /usr/share/archiso/configs/releng archlive
rm archlive/airootfs/root/.automated_script.sh
rm archlive/airootfs/root/customize_airootfs.sh
rm archlive/airootfs/root/create_boot_image.sh
git clone https://github.com/danila7/arch_btrfs_enc.git archlive/airootfs/root/ 
rm -rf archlive/airootfs/root/.git
rm -rf /tmp/archiso-tmp
mkarchiso -v -w /tmp/archiso-tmp archlive
dd if=out/ar* of=/dev/sdb bs=4M status=progress oflag=sync
rm -rf out archlive
echo "Finished"
fi

