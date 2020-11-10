#!/bin/bash
cryptsetup luksOpen /dev/disk/by-partlabel/cryptsystem system
o=commit=120,compress=zstd,defaults,ssd,discard=async,noatime,nodiratime,space_cache              
umount -R /mnt
mount -t btrfs LABEL=system /mnt
mkdir /mnt2
mount LABEL=EFI /mnt2
