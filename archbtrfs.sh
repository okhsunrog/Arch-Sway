#!/bin/bash
timedatectl set-ntp true
reflector --latest 250 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
echo "Enter your swap size in MiB"
read -p 'Swap size : ' swsize
sgdisk /dev/sda -o
sgdisk --clear \
         --new=1:0:+100MiB --typecode=1:ef00 --change-name=1:EFI \
         --new=3:0:0       --typecode=3:8300 --change-name=3:cryptsystem \
           /dev/sda
fdisk -l
mkfs.fat -F32 -n EFI /dev/disk/by-partlabel/EFI
read -sp 'Encryption password: ' cryptpass
echo $cryptpass | cryptsetup luksFormat --align-payload=8192 -s 256 -c aes-xts-plain64 /dev/disk/by-partlabel/cryptsystem
echo $cryptpass | cryptsetup open /dev/disk/by-partlabel/cryptsystem system
mkfs.btrfs --force --label system /dev/mapper/system
export o_swap=defaults,X-mount.mkdir,ssd,discard=async,noatime,nodiratime,space_cache
export o=$o_swap,commit=120,compress=zstd
mount -t btrfs LABEL=system /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@swap
umount -R /mnt
mount -t btrfs -o subvol=@,$o LABEL=system /mnt
mount -t btrfs -o subvol=@home,$o LABEL=system /mnt/home
mount -t btrfs -o subvol=@swap,$o_swap LABEL=system /mnt/swap
mount -o X-mount.mkdir LABEL=EFI /mnt/boot
pacstrap /mnt base base-devel linux linux-firmware btrfs-progs man-db man-pages neovim networkmanager intel-ucode
genfstab -L -p /mnt >> /mnt/etc/fstab
read -p 'Enter your hostname (name of your PC): ' hsname
echo $hsname > /mnt/etc/hostname
echo "127.0.0.1	localhost
::1		localhost
127.0.1.1	${hsname}.localdomain	${hsname}" > /mnt/etc/hosts
sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /mnt/etc/locale.gen
echo "LANG=en_US.UTF-8" > /mnt/etc/locale.conf 
curl -s https://danila7.github.io/archbtrfsch.sh -o /mnt/chrscript.sh
chmod +x /mnt/chrscript.sh
arch-chroot /mnt ./chrscript.sh
