#!/bin/bash
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
cd ~
cryptsetup --batch-mode --cipher=aes-xts-plain64 --offset=0 --key-file=crypto_keyfile.bin --key-size=512 open --type plain /dev/sda cryptsystem
o=commit=120,compress=zstd,defaults,ssd,discard=async,noatime,nodiratime,space_cache              
mount -t btrfs LABEL=system /mnt
mkdir /mnt2
mount LABEL=EFI /mnt2
