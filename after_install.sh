#!/bin/bash
echo "Stay near the pc, you will have to enter root password for a few times"
sudo rfkill unblock all &> /dev/null
echo "Updating mirrors"
sudo reflector --verbose --sort rate --country Russia --country Germany --age 12 --save /etc/pacman.d/mirrorlist
echo "Setting timezone and time sync..."
timedatectl set-timezone Europe/Moscow
timedatectl set-ntp true
git config --global user.name "Danila"
git config --global user.email "dghak@bk.ru"
echo "Installing additiional packages..."
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
yay -S wofi-hg ytop-bin nerd-fonts-fira-code i3ipc-python-git clipman tor-browser pulseaudio-modules-bt-git virtualbox-ext-oracle translate-shell obs-studio-wayland wlrobs zoom jmtpfs swaylock-effects-git yandex-disk spotify adbfs-rootless-git scrcpy nm-connection-editor networkmanager-openvpn hunspell hunspell-en_US hunspell-ru-aot-ieyo hyphen hyphen-en hyphen-ru --noconfirm --sudoloop
echo "Zoom configuration..."
cp /usr/share/applications/Zoom.desktop ~/.local/share/applications
sed -i 's+Exec=/usr/bin/zoom %U+Exec=env QT_QPA_PLATFORM=xcb /usr/bin/zoom %U+g' ~/.local/share/applications/Zoom.desktop
update-desktop-database ~/.local/share/applications &> /dev/null
yay -Rns vlc gnu-free-fonts --noconfirm --sudoloop
nvim -c ":PlugInstall"
echo "# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
fi" > ~/.zprofile
sudo umount -R /.snapshots
sudo umount -R /home/.snapshots
sudo rm -r /.snapshots
sudo rm -r /home/.snapshots
sudo snapper -c root create-config /
sudo snapper -c home create-config /home
sudo btrfs subvolume delete /.snapshots
sudo btrfs subvolume delete /home/.snapshots
sudo mkdir /.snapshots
sudo mkdir /home/.snapshots
sudo mount -a
sudo chmod 750 /.snapshots
sudo chmod 750 /home/.snapshots
sudo sed -i 's/TIMELINE_CREATE="yes"/TIMELINE_CREATE="no"/g' /etc/snapper/configs/root
sudo sed -i 's/TIMELINE_CREATE="yes"/TIMELINE_CREATE="no"/g' /etc/snapper/configs/home
sudo mkdir /.bootbackup
sudo cp -r /boot /.bootbackup/
sudo snapper -c root create --description "After installation"
sudo snapper -c home create --description "After installation"
sleep 2
rm "after_install.sh"
reboot
