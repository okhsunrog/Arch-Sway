#!/bin/bash
umount -R /mnt
umount /mnt2
cryptsetup close /dev/mapper/cryptsystem
mkdir temp
mkdir /tmp/exxtr
mount LABEL=EFI temp
cp temp/initramfs* /tmp/exxtr/
umount temp
rm -rf temp
cd /tmp/exxtr
lsinitcpio -x initramfs*
cp crypto_keyfile.bin ~/
rm -rf /tmp/exxtr
cd
cryptsetup --batch-mode --cipher=aes-xts-plain64 --offset=0 --key-file=crypto_keyfile.bin --key-size=512 open --type plain /dev/sda cryptsystem
o=commit=120,compress=zstd,defaults,ssd,discard=async,noatime,nodiratime,space_cache
mount -t btrfs -o subvol=@,$o LABEL=system /mnt
mount -t btrfs -o subvol=@home,$o LABEL=system /mnt/home
mount -t btrfs -o subvol=@swap,$o LABEL=system /mnt/swap
mount -t btrfs -o subvol=@snapshots_home,$o LABEL=system /mnt/home/.snapshots
mount -t btrfs -o subvol=@snapshots_root,$o LABEL=system /mnt/.snapshots
mount -t btrfs -o subvol=@log,$o LABEL=system /mnt/var/log
mount LABEL=EFI /mnt/boot
arch-chroot /mnt
