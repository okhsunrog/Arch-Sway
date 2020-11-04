#!/bin/bash
rfkill unblock all
mkdir /media
mount -a &> /dev/null
locale-gen &> /dev/null
hwclock --systohc &> /dev/null
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
systemctl enable NetworkManager &> /dev/null
rm /etc/mkinitcpio.conf
echo 'MODULES=""
BINARIES=""
FILES=""
HOOKS="base udev autodetect modconf block encrypt btrfs filesystems keyboard resume fsck"' > /etc/mkinitcpio.conf
mkinitcpio -P &> /dev/null
echo "Installing additional software..."
pacman -S wf-recorder gammastep imagemagick i3status-rust ttf-font-awesome powerline-fonts speedtest-cli upower bluez-utils bluez tk python-pip swayidle ttf-dejavu gnu-free-fonts noto-fonts noto-fonts-extra ttf-hack noto-fonts-emoji zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps clementine udiskie udisks2 htop gnome-icon-theme gnome-icon-theme-extras qt5ct meson ninja scdoc brightnessctl playerctl mako acpi qbittorrent virtualbox virtualbox-host-modules-arch gimp code libreoffice-fresh xorg-server-xwayland xdg-user-dirs ffmpeg youtube-dl jdk14-openjdk jdk8-openjdk mpv imv tmux openssh wget fish pulseaudio pulseaudio-alsa fedora-firefox-wayland-bin bemenu-wlroots libva-intel-driver telegram-desktop ttf-opensans wofi git sway alacritty neofetch pavucontrol ranger grim slurp jq wl-clipboard ttf-fira-code neofetch android-tools atool bzip2 cpio gzip lhasa lzop p7zip tar unace unrar unzip xz zip gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-libav earlyoom --noconfirm
echo "keyserver hkp://pool.sks-keyservers.net
keyserver https://sks-keyservers.net/
keyserver https://keys.mailvelope.com/
keyserver https://keys.openpgp.org/" >> /root/.gnupg/dirmngr.conf
read -p 'Enter root password: ' rpass
echo "$rpass
$rpass" | passwd &> /dev/null
echo "Creating a new user..."
read -p 'Enter username: ' uname
useradd -mG wheel,video,uucp,lock,vboxusers -s /usr/bin/fish $uname
read -p "Enter $uname password: " upass
echo "$upass
$upass" | passwd $uname &> /dev/null
mkdir /home/$uname/.gnupg/
cp /root/.gnupg/dirmngr.conf /home/$uname/.gnupg/
chown -R $uname:$uname /home/$uname/.gnupg
chmod 700 /root/.gnupg
chmod 600 /root/.gnupg/*
chmod 700 /home/$uname/.gnupg
chmod 600 /home/$uname/.gnupg/*
sed -i 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers
echo 'ENV{ID_FS_USAGE}=="filesystem|other|crypto", ENV{UDISKS_FILESYSTEM_SHARED}="1"' > /etc/udev/rules.d/99-udisks2.rules
su - $uname -c 'set fish_greeting' &> /dev/null
systemctl enable earlyoom &> /dev/null
systemctl enable bluetooth.service  &> /dev/null
su - $uname -c 'xdg-user-dirs-update' &> /dev/null
pacman -Rns xdg-user-dirs --noconfirm &> /dev/null
mkdir /home/$uname/Pictures/screenshots
chown -R $uname:$uname /home/$uname/Pictures/screenshots
echo "Installing yay..."
git clone https://aur.archlinux.org/yay-bin.git /tmp/aurbuild &> /dev/null
chmod 777 /tmp/aurbuild
su - $uname -c 'cd /tmp/aurbuild; makepkg -s' &> /dev/null
pacman -U /tmp/aurbuild/*.pkg.* --noconfirm &> /dev/null
rm -rf /tmp/aurbuild
echo "QT_QPA_PLATFORM=wayland
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
GRIM_DEFAULT_DIR=/home/$uname/Pictures/screenshots
TERMINAL=alacritty
" >> /etc/environment
echo "vboxdrv" > /etc/modules-load.d/virtualbox.conf
curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/master/scripts/99-platformio-udev.rules | sudo tee /etc/udev/rules.d/99-platformio-udev.rules &> /dev/null
udevadm control --reload-rules &> /dev/null
udevadm trigger &> /dev/null
echo "Enter your swapfile size in GiB"
read -p 'Swap size : ' swsizeG
echo "Creating swap file..."
swsize=$((swsizeG*1024))
truncate -s 0 /swap/swapfile &> /dev/null
chattr +C /swap/swapfile &> /dev/null
btrfs property set /swap/swapfile compression none &> /dev/null
dd if=/dev/zero of=/swap/swapfile bs=1M count=$swsize status=progress
chmod 600 /swap/swapfile
mkswap /swap/swapfile &> /dev/null
swapon /swap/swapfile &> /dev/null
echo "/swap/swapfile          none            swap            defaults        0 0" >> /etc/fstab
gcc -O2 /btrfs_map_physical.c -o /tmp/btrfs_map_physical
rm /btrfs_map_physical.c
OU1=$(/tmp/btrfs_map_physical /swap/swapfile | head -n 2 | tail -n 1 | awk '{print($9)}')
OU2=$(getconf PAGESIZE)
OU3=$((OU1 / OU2))
echo "Installing bootloader..."
bootctl --path=/boot install &> /dev/null
echo "default arch" > /boot/loader/loader.conf
echo "title           Arch Linux
linux           /vmlinuz-linux
initrd          /intel-ucode.img
initrd          /initramfs-linux.img
options         cryptdevice=PARTLABEL=cryptsystem:luks:allow-disca
rds root=LABEL=system resume=LABEL=system rootflags=subvol=@ resumeflags=subvol=@ resume_offset=$OU3 rd.luks.options=discard rw" > /boot/loader/entries/arch.conf

mv /Wallpapers /home/$uname/Pictures/Wallpapers
rm -rf /home/$uname/.local
rm -rf /home/$uname/.config
mv /.local /home/$uname/.local
mv /.config /home/$uname/.config
mv /after_install.sh /home/$uname/
mv /scripts /home/$uname/scripts
chmod +x /home/$uname/scripts/*
chown -R $uname:$uname /home/$uname
