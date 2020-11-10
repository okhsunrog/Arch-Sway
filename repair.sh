#!/bin/bash
cryptsetup luksOpen /dev/disk/by-partlabel/cryptsystem system
o=commit=120,compress=zstd,defaults,ssd,discard=async,noatime,nodiratime,space_cache
umount -R /mnt
mount -t btrfs -o subvol=@,$o LABEL=system /mnt
mount -t btrfs -o subvol=@home,$o LABEL=system /mnt/home
mount -t btrfs -o subvol=@swap,$o LABEL=system /mnt/swap
mount -t btrfs -o subvol=@snapshots_home,$o LABEL=system /mnt/home/.snapshots
mount -t btrfs -o subvol=@snapshots_root,$o LABEL=system /mnt/.snapshots
mount -t btrfs -o subvol=@log,$o LABEL=system /mnt/var/log
mount LABEL=EFI /mnt/boot
arch-chroot /mnt
