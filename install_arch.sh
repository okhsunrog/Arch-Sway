#!/bin/bash
echo "Welcome to the Arch-Sway installing script!"
read -p 'Enter disk encryption password: ' cryptpass
read -p 'Enter your hostname (name of your PC): ' hsname
rmmod pcspkr &> /dev/null
timedatectl set-ntp true &> /dev/null
echo "Updating Arch mirrors..."
reflector --latest 250 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
echo "Configuring disks..."
sgdisk /dev/sda -o &> /dev/null
sgdisk --clear \
         --new=1:0:+100MiB --typecode=1:ef00 --change-name=1:EFI \
         --new=2:0:0       --typecode=2:8300 --change-name=2:cryptsystem \
           /dev/sda &> /dev/null
mkfs.fat -F32 -n EFI /dev/disk/by-partlabel/EFI &> /dev/null
echo $cryptpass | cryptsetup luksFormat --align-payload=8192 -s 256 -c aes-xts-plain64 /dev/disk/by-partlabel/cryptsystem &> /dev/null
echo $cryptpass | cryptsetup open /dev/disk/by-partlabel/cryptsystem system &> /dev/null
mkfs.btrfs --force --label system /dev/mapper/system &> /dev/null
o_swap=defaults,X-mount.mkdir,ssd,discard=async,noatime,nodiratime,space_cache
o=$o_swap,commit=120,compress=zstd
mount -t btrfs LABEL=system /mnt &> /dev/null
btrfs subvolume create /mnt/@ &> /dev/null
btrfs subvolume create /mnt/@home &> /dev/null
btrfs subvolume create /mnt/@swap &> /dev/null
umount -R /mnt &> /dev/null
mount -t btrfs -o subvol=@,$o LABEL=system /mnt &> /dev/null
mount -t btrfs -o subvol=@home,$o LABEL=system /mnt/home &> /dev/null
mount -t btrfs -o subvol=@swap,$o_swap LABEL=system /mnt/swap &> /dev/null
mount -o X-mount.mkdir LABEL=EFI /mnt/boot &> /dev/null
echo "Installing packages..."
pacstrap /mnt base base-devel linux linux-firmware btrfs-progs man-db man-pages neovim networkmanager intel-ucode &> /dev/null
echo "Configuring..."
genfstab -L -p /mnt >> /mnt/etc/fstab
echo $hsname > /mnt/etc/hostname
echo "127.0.0.1	localhost
::1		localhost
127.0.1.1	${hsname}.localdomain	${hsname}" > /mnt/etc/hosts
sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /mnt/etc/locale.gen
echo "LANG=en_US.UTF-8" > /mnt/etc/locale.conf 
cp s_part.sh /mnt/
cp after_install.sh /mnt/
cp btrfs_map_physical.c /mnt/
cp -r .config /mnt/
cp -r .local /mnt/
cp -r Wallpapers /mnt/
cp -r scripts /mnt/
chmod +x /mnt/after_install.sh
chmod +x /mnt/s_part.sh
arch-chroot /mnt ./s_part.sh
rm /mnt/s_part.sh

echo "Installation is complete! Now you can reboot to you system. 
After rebooting launch script after_install.sh placed in your home directory to install some important components.
You can delete the script after that.
For finishing neovim configuration type command    :PlugInstall        in nvim"
