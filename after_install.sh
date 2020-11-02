#!/bin/bash
yay -S translate-shell zoom jmtpfs swaylock-effects-git yandex-disk spotify adbfs-rootless-git intellij-idea-ce scrcpy nm-connection-editor networkmanager-openvpn
timedatectl set-timezone Europe/Moscow
timedatectl set-ntp true
mkdir ~/.local/share/applications
cp /usr/share/applications/Zoom.desktop ~/.local/share/applications
sed -i 's+Exec=/usr/bin/zoom %U+Exec=env QT_QPA_PLATFORM=xcb /usr/bin/zoom %U+g' ~/.local/share/applications/Zoom.desktop
git clone https://aur.archlinux.org/tor-browser.git
cd tor-browser
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torpr
oject.org
makepkg -si
cd ..
rm -rf tor-browser
