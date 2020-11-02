#!/bin/bash
mount -a
locale-gen
hwclock --systohc
timedatectl set-timezone Europe/Moscow
timedatectl set-ntp true
pacman -Syyu
systemctl enable NetworkManager
rm /etc/mkinitcpio.conf
echo 'MODULES=""
BINARIES=""
FILES=""
HOOKS="base udev autodetect modconf block encrypt btrfs filesystems keyboard fsck"' > /etc/mkinitcpio.conf
mkinitcpio -P
bootctl --path=/boot install
echo "default arch" > /boot/loader/loader.conf
echo "title           Arch Linux
linux           /vmlinuz-linux
initrd          /intel-ucode.img
initrd          /initramfs-linux.img
options         cryptdevice=PARTLABEL=cryptsystem:luks:allow-discards root=LABEL=system rootflags=subvol=@ rd.luks.options=discard rw" > /boot/loader/entries/arch.conf
read -sp 'Root password: ' rpass
echo "$rpass
$rpass" | passwd
read -p 'Username: ' uname
pacman -S meson ninja scdoc brightnessctl playerctl mako acpi qbittorrent virtualbox virtualbox-host-modules-arch gimp code libreoffice-fresh xorg-server-xwayland xdg-user-dirs ffmpeg youtube-dl jdk14-openjdk jdk8-openjdk mpv imv tmux openssh wget fish pulseaudio pulseaudio-alsa firefox bemenu-wlroots libva-intel-driver telegram-desktop ttf-opensans wofi git sway waybar alacritty neofetch pavucontrol-qt ranger grim slurp jq wl-clipboard swaylock  --noconfirm
useradd -mG wheel,video,uucp,lock,vboxusers -s /usr/bin/fish $uname
read -sp 'Enter $uname password: ' upass
echo "$upass
$upass" | passwd $uname
sed -i 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers
#git config --global user.name "Danila"
#git config --global user.email "dghak@bk.ru"
su - $uname -c 'xdg-user-dirs-update'
mkdir /home/$uname/Pictures/screenshots
git clone https://aur.archlinux.org/yay-bin.git /tmp/aurbuild
chmod 777 /tmp/aurbuild
su - $uname -c 'cd /tmp/aurbuild; makepkg -s'
pacman -U /tmp/aurbuild/*.pkg.* --noconfirm
rm -rf /tmp/aurbuild
git clone https://aur.archlinux.org/swaylock-effects-git.git /tmp/aurbuild
chmod 777 /tmp/aurbuild
su - $uname -c 'cd /tmp/aurbuild; makepkg -s'
pacman -U /tmp/aurbuild/*.pkg.* --noconfirm
rm -rf /tmp/aurbuild
echo "MOZ_ENABLE_WAYLAND=1
QT_QPA_PLATFORM=wayland
QT_QPA_PLATFORMTHEME=qt5ct
CLUTTER_BACKEND=wayland
SDL_VIDEODRIVER=wayland
BEMENU_BACKEND=wayland
_JAVA_AWT_WM_NONREPARENTING=1
EDITOR=nvim
TDESKTOP_DISABLE_GTK_INTEGRATION=1
GRIM_DEFAULT_DIR=/home/$uname/Pictures/screenshots
" >> /etc/environment
mkdir /home/$uname/.config
mkdir /home/$uname/scripts
echo "vboxdrv" > /etc/modules-load.d/virtualbox.conf
curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/master/scripts/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules
udevadm control --reload-rules
udevadm trigger
echo "Enter your swapfile size in MiB"
read -p 'Swap size : ' swsize
truncate -s 0 /swap/swapfile
chattr +C /swap/swapfile
btrfs property set /swap/swapfile compression none
dd if=/dev/zero of=/swap/swapfile bs=1M count=$swsize status=progress
chmod 600 /swap/swapfile
mkswap /swap/swapfile
swapon /swap/swapfile
echo "/swap/swapfile          none            swap            defaults        0 0" >> /etc/fstab
