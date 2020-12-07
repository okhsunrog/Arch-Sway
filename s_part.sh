#!/bin/bash
mount -a
locale-gen
hwclock --systohc
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
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
FILES=""
HOOKS="base udev autodetect modconf block encrypt btrfs filesystems keyboard resume fsck"' > /etc/mkinitcpio.conf
mkinitcpio -P
echo "Installing additional software..."
pacman -S noto-fonts-emoji acpi systembus-notify vlc kitty ttf-dejavu otf-font-awesome xmlto pahole kmod inetutils bc libelf terminus-font reflector f2fs-tools exfatprogs snapper i3status-rust rsync cronie wf-recorder gammastep imagemagick upower bluez-utils bluez tk python-pip swayidle zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps udiskie udisks2 htop gnome-icon-theme qt5ct meson ninja scdoc brightnessctl playerctl mako qbittorrent gimp code libreoffice-fresh xorg-server-xwayland ffmpeg jdk14-openjdk jdk8-openjdk mpv imv openssh wget zsh pulseaudio pulseaudio-alsa bemenu-wlroots libva-intel-driver telegram-desktop ttf-opensans git sway neofetch pavucontrol ranger grim slurp jq wl-clipboard neofetch android-tools atool bzip2 cpio gzip lhasa lzop p7zip tar unace unrar unzip xz zip earlyoom virtualbox virtualbox-host-modules-arch --noconfirm
echo "vboxdrv" > /etc/modules-load.d/virtualbox.conf
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
useradd -mG wheel,video,uucp,lock,vboxusers -s /usr/bin/zsh $uname
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
systemctl enable bluetooth
systemctl enable cronie
systemctl enable rfkill-unblock@all
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
TERMINAL=kitty
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
linux           /vmlinuz-linux
initrd          /intel-ucode.img
initrd          /initramfs-linux.img
options         cryptdevice=PARTLABEL=cryptsystem:luks:allow-discards root=LABEL=system resume=LABEL=system rootflags=subvol=@ resumeflags=subvol=@ resume_offset=$OU3 rd.luks.options=discard rw quiet" > /boot/loader/entries/arch.conf
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
mv install.sh /home/$uname/
su - $uname -c 'sh install.sh --unattended'
rm /home/$uname/install.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/$uname/.oh-my-zsh/custom/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-completions /home/$uname/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions /home/$uname/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo "if [ "$(tty)" = "/dev/tty1" ]; then
    ./after_install.sh
fi" > /home/$uname/.zprofile 
mv /Wallpapers /home/$uname/real_home/Pictures/Wallpapers
rm -rf /home/$uname/.local
rm -rf /home/$uname/.config
mv /.local /home/$uname/.local
mv /.config /home/$uname/.config
mv /after_install.sh /home/$uname/
mv /.p10k.zsh /home/$uname/
mv /.zshrc /home/$uname/
mv /scripts /home/$uname/scripts
chmod +x /home/$uname/scripts/*
chown -R $uname:$uname /home/$uname
mkdir /media

