#!/bin/bash
mount -a
locale-gen
hwclock --systohc
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
systemctl enable NetworkManager
echo "[Trigger]
Operation = Upgrade
Operation = Install
Operation = Remove
Type = Package
Target = linux*

[Action]
Depends = rsync
Description = Backing up /boot...
When = PreTransaction
Exec = /usr/bin/rsync -a --delete /boot /.bootbackup" > /usr/share/libalpm/hooks/50_bootbackup.hook
rm /etc/mkinitcpio.conf
echo 'MODULES=""
BINARIES=""
FILES=""
HOOKS="base udev autodetect modconf block encrypt btrfs filesystems keyboard resume fsck"' > /etc/mkinitcpio.conf
mkinitcpio -P
echo "Installing additional software..."
pacman -S reflector i3status-rust rsync cronie wf-recorder gammastep imagemagick ttf-font-awesome powerline-fonts speedtest-cli upower bluez-utils bluez tk python-pip swayidle ttf-dejavu gnu-free-fonts noto-fonts noto-fonts-extra ttf-hack noto-fonts-emoji zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps clementine udiskie udisks2 htop gnome-icon-theme gnome-icon-theme-extras qt5ct meson ninja scdoc brightnessctl playerctl mako acpi qbittorrent virtualbox virtualbox-host-modules-arch gimp code libreoffice-fresh xorg-server-xwayland ffmpeg youtube-dl jdk14-openjdk jdk8-openjdk mpv imv tmux openssh wget fish pulseaudio pulseaudio-alsa firefox bemenu-wlroots libva-intel-driver telegram-desktop ttf-opensans wofi git sway kitty neofetch pavucontrol ranger grim slurp jq wl-clipboard ttf-fira-code neofetch android-tools atool bzip2 cpio gzip lhasa lzop p7zip tar unace unrar unzip xz zip gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-libav earlyoom --noconfirm
echo "keyserver hkp://pool.sks-keyservers.net
keyserver https://sks-keyservers.net/
keyserver https://keys.mailvelope.com/
keyserver https://keys.openpgp.org/" >> /root/.gnupg/dirmngr.conf
read -p 'Enter root password: ' rpass
echo "$rpass
$rpass" | passwd
echo "Creating a new user..."
read -p 'Enter username: ' uname
useradd -mG wheel,video,uucp,lock,vboxusers -s /usr/bin/fish $uname
read -p "Enter $uname password: " upass
echo "$upass
$upass" | passwd $uname
mkdir /home/$uname/.gnupg/
cp /root/.gnupg/dirmngr.conf /home/$uname/.gnupg/
chmod 700 /root/.gnupg
chmod 600 /root/.gnupg/*
chmod 700 /home/$uname/.gnupg
chmod 600 /home/$uname/.gnupg/*
sed -i 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers
echo 'ENV{ID_FS_USAGE}=="filesystem|other|crypto", ENV{UDISKS_FILESYSTEM_SHARED}="1"' > /etc/udev/rules.d/99-udisks2.rules
su - $uname -c 'set fish_greeting'
systemctl enable earlyoom
systemctl enable bluetooth.service
systemctl enable cronie.service
mkdir -p /home/$uname/real_home/Pictures/screenshots
echo "Installing yay..."
git clone https://aur.archlinux.org/yay-bin.git /tmp/aurbuild
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
JAVA_HOME=/usr/lib/jvm/java-8-openjdk
QT_WAYLAND_DISABLE_WINDOWDECORATION=1
STUDIO_JDK=/usr/lib/jvm/java-14-openjdk
TDESKTOP_DISABLE_GTK_INTEGRATION=1
GRIM_DEFAULT_DIR=/home/$uname/real_home/Pictures/screenshots
TERMINAL=alacritty
" >> /etc/environment
echo "vboxdrv" > /etc/modules-load.d/virtualbox.conf
curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/master/scripts/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules
echo "Enter your swapfile size in GiB"
read -p 'Swap size : ' swsizeG
echo "Creating swap file..."
swsize=$((swsizeG*1024))
truncate -s 0 /swap/swapfile
chattr +C /swap/swapfile
btrfs property set /swap/swapfile compression none
dd if=/dev/zero of=/swap/swapfile bs=1M count=$swsize status=progress
chmod 600 /swap/swapfile
mkswap /swap/swapfile
swapon /swap/swapfile
echo "/swap/swapfile          none            swap            defaults        0 0" >> /etc/fstab
gcc -O2 /btrfs_map_physical.c -o /tmp/btrfs_map_physical
rm /btrfs_map_physical.c
OU1=$(/tmp/btrfs_map_physical /swap/swapfile | head -n 2 | tail -n 1 | awk '{print($9)}')
OU2=$(getconf PAGESIZE)
OU3=$((OU1 / OU2))
echo "Installing bootloader..."
bootctl --path=/boot install
echo "default arch" > /boot/loader/loader.conf
echo "title           Arch Linux
linux           /vmlinuz-linux
initrd          /intel-ucode.img
initrd          /initramfs-linux.img
options         cryptdevice=PARTLABEL=cryptsystem:luks:allow-discards root=LABEL=system resume=LABEL=system rootflags=subvol=@ resumeflags=subvol=@ resume_offset=$OU3 rd.luks.options=discard rw" > /boot/loader/entries/arch.conf
mv /Wallpapers /home/$uname/real_home/Pictures/Wallpapers
rm -rf /home/$uname/.local
rm -rf /home/$uname/.config
mv /.local /home/$uname/.local
mv /.config /home/$uname/.config
mv /after_install.sh /home/$uname/
mv /scripts /home/$uname/scripts
mv /configure_snapshots.sh /home/$uname/
chmod +x /home/$uname/scripts/*
chown -R $uname:$uname /home/$uname
mkdir /media
