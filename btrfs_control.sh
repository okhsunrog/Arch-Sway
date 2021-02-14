#!/bin/bash
cp temp/initramfs* /tmp/exxtr/
umount temp
rm -rf temp
cd /tmp/exxtr
lsinitcpio -x initramfs*
cp crypto_keyfile.bin ~/
rm -rf /tmp/exxtr
cd ~
o=commit=120,compress=zstd,defaults,ssd,discard=async,noatime,nodiratime,space_cache              
umount -R /mnt
mount -t btrfs LABEL=system /mnt
mkdir /mnt2
mount LABEL=EFI /mnt2
