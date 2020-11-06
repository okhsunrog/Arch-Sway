#!/bin/bash
echo "Welcome to the Arch-Sway installing script!"
read -p 'Enter disk encryption password: ' cryptpass
read -p 'Enter your hostname (name of your PC): ' hsname
rmmod pcspkr
timedatectl set-ntp true
echo "Updating Arch mirrors..."
reflector --latest 250 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
echo "Configuring disks..."
sgdisk /dev/sda -o
sgdisk --clear \
         --new=1:0:+100MiB --typecode=1:ef00 --change-name=1:EFI \
         --new=2:0:0       --typecode=2:8300 --change-name=2:cryptsystem \
           /dev/sda
mkfs.fat -F32 -n EFI /dev/disk/by-partlabel/EFI
echo $cryptpass | cryptsetup luksFormat --align-payload=8192 -s 256 -c aes-xts-plain64 /dev/disk/by-partlabel/cryptsystem
echo $cryptpass | cryptsetup open /dev/disk/by-partlabel/cryptsystem system
mkfs.btrfs --force --label system /dev/mapper/system
o=commit=120,compress=zstd,defaults,X-mount.mkdir,ssd,discard=async,noatime,nodiratime,space_cache
mount -t btrfs LABEL=system /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@swap
btrfs subvolume create /mnt/@snapshots
btrfs subvolume create /mnt/@log
umount -R /mnt
mount -t btrfs -o subvol=@,$o LABEL=system /mnt
mount -t btrfs -o subvol=@home,$o LABEL=system /mnt/home
mount -t btrfs -o subvol=@swap,$o LABEL=system /mnt/swap
mount -t btrfs -o subvol=@snapshots,$o LABEL=system /mnt/.snapshots
mount -t btrfs -o subvol=@log,$o LABEL=system /mnt/var/log
mount -o X-mount.mkdir LABEL=EFI /mnt/boot
chmod 750 /mnt/.shapshots
echo "Installing packages..."
pacstrap /mnt base base-devel linux linux-firmware btrfs-progs man-db man-pages neovim networkmanager
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
