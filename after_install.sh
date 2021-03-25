#!/bin/bash
mkdir temp mnt build share Videos Downloads Music
broot --install
echo "Stay near the pc, you will have to enter root password for a few times"
echo "Updating mirrors"
sudo reflector --verbose --sort rate --protocol https --country Russia --country Germany --age 12 --save /etc/pacman.d/mirrorlist
echo "Setting timezone and time sync..."
sudo timedatectl set-ntp true --no-ask-password
sudo timedatectl set-timezone Europe/Moscow --no-ask-password
git config --global user.name "Danila"
git config --global user.email "dghak@bk.ru"
(crontab -l 2>/dev/null; echo "*/2 * * * * ~/scripts/hib_on_low.sh >/dev/null 2>&1") | crontab -
echo "Installing additiional packages..."
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
sudo mkdir /opt/{idea,pycharm,clion}
sudo curl -L "https://download.jetbrains.com/product?code=IIU&latest&distribution=linux" | sudo tar xvz -C /opt/idea  --strip 1
sudo curl -L "https://download.jetbrains.com/product?code=PY&latest&distribution=linux" | sudo tar xvz -C /opt/pycharm  --strip 1
sudo curl -L "https://download.jetbrains.com/product?code=CL&latest&distribution=linux" | sudo tar xvz -C /opt/clion  --strip 1
BUILDDIR=/tmp/makepkg yay -S wlogout-git swaykbdd autotiling-git emptty-one-entry qt5-webengine-widevine deadbeef-mpris2-plugin i3status-rust-git virtualbox-ext-oracle upd72020x-fw sway-git swaybg-minimal-git swayidle-git wlroots-git qt5-styleplugins gtk-theme-numix-solarized numix-icon-theme-git kotatogram-desktop-bin mimeo perl-file-mimeinfo qbittorrent-enhanced-git pipewire libpipewire02 xdg-desktop-portal xdg-desktop-portal-wlr wofi-hg ytop-bin nerd-fonts-dejavu-complete i3ipc-python-git clipman youtube-dl translate-shell obs-studio wlrobs zoom swaylock-effects-git yandex-disk adbfs-rootless-git scrcpy nm-connection-editor hunspell hunspell-en_us hunspell-ru-aot-ieyo hyphen hyphen-en hyphen-ru --noconfirm --sudoloop
yay -Rdd xdg-utils --noconfirm
yay -Rns vlc --noconfirm
yay -Rns sway-git-debug --noconfirm
yay -Rns wlroots-git-debug --confirm
BUILDDIR=/tmp/makepkg yay -S xdg-utils-mimeo --noconfirm
nvim -c ":PlugInstall"
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
sudo sed -i 's/TIMELINE_LIMIT_MONTHLY="10"/TIMELINE_LIMIT_MONTHLY="0"/g' /etc/snapper/configs/root
sudo sed -i 's/TIMELINE_LIMIT_YEARLY="10"/TIMELINE_LIMIT_YEARLY="0"/g' /etc/snapper/configs/root
sudo sed -i 's/TIMELINE_LIMIT_HOURLY="10"/TIMELINE_LIMIT_HOURLY="23"/g' /etc/snapper/configs/root
sudo sed -i 's/TIMELINE_LIMIT_MONTHLY="10"/TIMELINE_LIMIT_MONTHLY="0"/g' /etc/snapper/configs/home
sudo sed -i 's/TIMELINE_LIMIT_YEARLY="10"/TIMELINE_LIMIT_YEARLY="0"/g' /etc/snapper/configs/home
sudo sed -i 's/TIMELINE_LIMIT_HOURLY="10"/TIMELINE_LIMIT_HOURLY="23"/g' /etc/snapper/configs/home
sudo sed -i 's/TIMELINE_LIMIT_DAILY="10"/TIMELINE_LIMIT_DAILY="5"/g' /etc/snapper/configs/home
sudo sed -i 's/TIMELINE_LIMIT_DAILY="10"/TIMELINE_LIMIT_DAILY="7"/g' /etc/snapper/configs/root
sleep 2
rm "after_install.sh"
rm .local/share/applications/*Kotatogram_Desktop.desktop
sudo systemctl enable emptty
sudo sed -i "s/#DEFAULT_USER=user/DEFAULT_USER=$USER/g" /etc/emptty/conf
reboot
