#!/bin/bash
ehco "Setting timezone and time sync..."
timedatectl set-timezone Europe/Moscow
timedatectl set-ntp true
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' &> /dev/null
git config --global user.name "Danila"
git config --global user.email "dghak@bk.ru"
echo "Installing additiional packages..."
yay -S translate-shell zoom jmtpfs swaylock-effects-git yandex-disk spotify adbfs-rootless-git scrcpy nm-connection-editor networkmanager-openvpn hunspell hunspell-en_US hunspell-ru-aot-ieyo hyphen hyphen-en hyphen-ru ytop-bin --noconfirm
echo "Zoom configuration..."
mkdir ~/.local/share/applications
cp /usr/share/applications/Zoom.desktop ~/.local/share/applications
sed -i 's+Exec=/usr/bin/zoom %U+Exec=env QT_QPA_PLATFORM=xcb /usr/bin/zoom %U+g' ~/.local/share/applications/Zoom.desktop
echo "Installing Tor Browser..."
git clone https://aur.archlinux.org/tor-browser.git &> /dev/null
cd tor-browser
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org &> /dev/null
makepkg -si --noconfirm &> /dev/null
cd ..
rm -rf tor-browser
update-desktop-database ~/.local/share/applications &> /dev/null
echo "Finished!"
