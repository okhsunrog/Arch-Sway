#!/bin/bash
mount -a
locale-gen
hwclock --systohc
systemctl enable NetworkManager
rm /etc/mkinitcpio.conf
sed -i 's/# deny = 3/deny = 0/g' /etc/security/faillock.conf
sed -i 's/CFLAGS="-march=x86-64 -mtune=generic -O2 -pipe -fno-plt"/CFLAGS="-march=native -O2 -pipe -fno-plt"/g' /etc/makepkg.conf
sed -i 's/CXXFLAGS="-march=x86-64 -mtune=generic -O2 -pipe -fno-plt"/CXXFLAGS="-march=native -O2 -pipe -fno-plt"/g' /etc/makepkg.conf
sed -i 's/#RUSTFLAGS="-C opt-level=2"/RUSTFLAGS="-C opt-level=2 -C target-cpu=native"/g' /etc/makepkg.conf
sed -i 's/#HandleLidSwitch=suspend/HandleLidSwitch=suspend-then-hibernate/g' /etc/systemd/logind.conf
sed -i 's/#HandleLidSwitchExternalPower=suspend/HandleLidSwitchExternalPower=suspend-then-hibernate/g' /etc/systemd/logind.conf
sed -i 's/#HibernateDelaySec=180min/HibernateDelaySec=120min/g' /etc/systemd/sleep.conf 
echo 'COMPRESSION=zstd
MODULES=""
BINARIES=""
FILES="/crypto_keyfile.bin"
HOOKS="base udev autodetect modconf block encrypt filesystems keyboard resume fsck"' > /etc/mkinitcpio.conf
echo '#!/bin/sh
CP=/bin/cp
exec $CP --reflink=auto "$@"' > /usr/local/bin/cp
chmod +x /usr/local/bin/cp
echo "Installing additional software..."
pacman -Syu --noconfirm
pacman -S virtualbox virtualbox-host-dkms firefox android-udev fpc libmad opus flac pcmanfm speedtest-cli fzf tree broot lxappearance texlive-langcyrillic texlive-core texlive-science qt5-wayland inkscape noto-fonts-emoji acpi systembus-notify ttf-dejavu otf-font-awesome xmlto pahole inetutils bc terminus-font reflector snapper i3status-rust rsync cronie wf-recorder imagemagick upower tk python-pip swayidle zathura zathura-djvu zathura-pdf-mupdf udiskie udisks2 htop qt5ct meson ninja scdoc brightnessctl playerctl mako gimp code libreoffice-fresh xorg-server-xwayland ffmpeg jdk-openjdk jdk8-openjdk mpv imv openssh wget fish pulseaudio pulseaudio-alsa bemenu-wlroots libva-intel-driver ttf-opensans git sway neofetch pavucontrol ranger grim slurp jq wl-clipboard neofetch android-tools atool cpio lhasa lzop p7zip unace unrar unzip zip earlyoom highlight mediainfo odt2txt perl-image-exiftool --noconfirm
pacman -U /bins/* --noconfirm
rm -rf /bins
echo "LOCALE=en_US.UTF-8
KEYMAP=ru
FONT=ter-u16b
CONSOLEMAP=
TIMEZONE=Europe/Moscow
HARDWARECLOCK=UTC
USECOLOR=yes" > /etc/vconsole.conf
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
echo "vboxdrv" > /etc/modules-load.d/virtualbox.conf
echo 'ENV{ID_FS_USAGE}=="filesystem|other|crypto", ENV{UDISKS_FILESYSTEM_SHARED}="1"' > /etc/udev/rules.d/99-udisks2.rules
systemctl enable earlyoom
systemctl enable cronie
su - $uname -c 'set fish_greeting'
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
QT_WAYLAND_DISABLE_WINDOWDECORATION=1
TDESKTOP_DISABLE_GTK_INTEGRATION=1
GRIM_DEFAULT_DIR=/home/$uname/real_home/Pictures/screenshots
TERMINAL=foot
" >> /etc/environment
echo "$uname ALL=NOPASSWD: /usr/bin/systemctl hibernate
" >> /etc/sudoers.d/custom
chmod 440 /etc/sudoers.d/custom
echo '
load-module module-remap-source source_name=record_mono master=alsa_input.pci-0000_00_1f.3.analog-stereo master_channel_map=front-left channel_map=mono
set-default-source record_mono
' >> /etc/pulse/default.pa
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
echo "default arch.conf" > /boot/loader/loader.conf
echo "title           Arch Linux
linux           /vmlinuz-linux-okhsunrog
initrd          /intel-ucode.img
initrd          /initramfs-linux-okhsunrog.img
options         cryptdevice=/dev/disk/by-id/ata-WDC_WDS100T2B0A-00SM50_203707800166:cryptsystem:allow-discards crypto=:aes-xts-plain64:512:0: root=LABEL=system resume=LABEL=system rootflags=subvol=@ resumeflags=subvol=@ resume_offset=$OU3 rw quiet" > /boot/loader/entries/arch.conf
echo "
LABEL=EFI               /boot           vfat            noauto,rw,noatime 0 2
" >> /etc/fstab
mv /Wallpapers /home/$uname/real_home/Pictures/Wallpapers
rm -rf /home/$uname/.local
rm -rf /home/$uname/.config
mv /.local /home/$uname/.local
mv /.config /home/$uname/.config
mv /after_install.sh /home/$uname/
mv /.gtkrc-2.0 /home/$uname/
mv /scripts /home/$uname/scripts
chmod +x /home/$uname/scripts/*
chown -R $uname:$uname /home/$uname
sed -i "s+include \"/home/danila/.gtkrc-2.0.mine\"+include \"/home/$uname/.gtkrc-2.0.mine\"+g" /home/$uname/.gtkrc-2.0
mkdir /media

