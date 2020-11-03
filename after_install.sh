#!/bin/bash
xdg-user-dirs-update
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git config --global user.name "Danila"
git config --global user.email "dghak@bk.ru"
yay -S tor translate-shell zoom jmtpfs swaylock-effects-git yandex-disk spotify adbfs-rootless-git intellij-idea-ce scrcpy nm-connection-editor networkmanager-openvpn --noconfirm
timedatectl set-timezone Europe/Moscow
timedatectl set-ntp true
mkdir ~/.local/share/applications
cp /usr/share/applications/Zoom.desktop ~/.local/share/applications
sed -i 's+Exec=/usr/bin/zoom %U+Exec=env QT_QPA_PLATFORM=xcb /usr/bin/zoom %U+g' ~/.local/share/applications/Zoom.desktop
git clone https://aur.archlinux.org/tor-browser.git
cd tor-browser
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
makepkg -si --noconfirm
cd ..
rm -rf tor-browser
update-desktop-database ~/.local/share/applications
