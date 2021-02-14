#!/bin/bash

rmmod pcspkr
echo "Welcome to the Arch-Sway installing script!"
ping -c 2 archlinux.org || { echo "No internet connection!"; exit; }
timedatectl set-ntp true
read -p 'Enter host name:' hsname
reflector --verbose --sort rate --protocol https --country Russia --country Germany --age 12 --save /etc/pacman.d/mirrorlist
echo "Configuring disks..."
sleep 3
cat <<EOF | gdisk /dev/sdc
o
y
n
1

+50M
ef00
w
y
EOF
sleep 3
mkfs.vfat -n EFI /dev/sdc1
touch crypto_keyfile.bin
dd bs=64 count=1 if=/dev/random of=crypto_keyfile.bin iflag=fullblock
cryptsetup --batch-mode --cipher=aes-xts-plain64 --offset=0 --key-file=crypto_keyfile.bin --key-size=512 open --type plain /dev/sda cryptsystem
mkfs.btrfs --force --label system /dev/mapper/cryptsystem
o=commit=120,compress=zstd,defaults,X-mount.mkdir,ssd,discard=async,noatime,nodiratime,space_cache
mount -t btrfs LABEL=system /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@swap
btrfs subvolume create /mnt/@snapshots_root
btrfs subvolume create /mnt/@snapshots_home
btrfs subvolume create /mnt/@log
umount -R /mnt
mount -t btrfs -o subvol=@,$o LABEL=system /mnt
mount -t btrfs -o subvol=@home,$o LABEL=system /mnt/home
mount -t btrfs -o subvol=@swap,$o LABEL=system /mnt/swap
mount -t btrfs -o subvol=@snapshots_home,$o LABEL=system /mnt/home/.snapshots
mount -t btrfs -o subvol=@snapshots_root,$o LABEL=system /mnt/.snapshots
mount -t btrfs -o subvol=@log,$o LABEL=system /mnt/var/log
mkdir /mnt/{boot,etc}
genfstab -L /mnt > /mnt/etc/fstab
mount LABEL=EFI /mnt/boot
cp crypto_keyfile.bin /mnt/boot/
cp crypto_keyfile.bin /mnt
echo "
LABEL=EFI               /boot           vfat            noauto,rw,noatime 0 2
" >> /mnt/etc/fstab
echo "Installing packages..."
pacstrap /mnt base base-devel mkinitcpio mkinitcpio-busybox linux-firmware intel-ucode man-db man-pages neovim networkmanager
echo "Configuring..."
echo $hsname > /mnt/etc/hostname
echo "127.0.0.1	localhost
::1		localhost
127.0.1.1	${hsname}.localdomain	${hsname}" > /mnt/etc/hosts
sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /mnt/etc/locale.gen
echo "LANG=en_US.UTF-8" > /mnt/etc/locale.conf 
cp s_part.sh /mnt/
cp after_install.sh /mnt/
cp btrfs_map_physical.c /mnt/
cp linux-okhsunrog.preset /mnt/etc/mkinitcpio.d/
cp -r .config /mnt/
cp -r .local /mnt/
cp -r bins /mnt/
cp -r Wallpapers /mnt/
cp -r scripts /mnt/
cp .gtkrc-2.0 /mnt/
chmod +x /mnt/after_install.sh
chmod +x /mnt/s_part.sh
arch-chroot /mnt ./s_part.sh
rm /mnt/s_part.sh
sleep 1
poweroff
