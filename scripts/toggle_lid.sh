#!/bin/sh

TOGGLE=$HOME/.toggle_lid

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    sudo sed -i 's/HandleLidSwitch=ignore/HandleLidSwitch=suspend-then-hibernate/g' /etc/systemd/logind.conf
    sudo sed -i 's/HandleLidSwitchExternalPower=ignore/HandleLidSwitchExternalPower=suspend-then-hibernate/g' /etc/systemd/logind.conf
    systemctl kill -s HUP systemd-logind
    echo "Lid action on"
else
    rm $TOGGLE
    sudo sed -i 's/HandleLidSwitch=suspend-then-hibernate/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf
    sudo sed -i 's/HandleLidSwitchExternalPower=suspend-then-hibernate/HandleLidSwitchExternalPower=ignore/g' /etc/systemd/logind.conf
    sudo systemctl kill -s HUP systemd-logind
    echo "Lid action off"
fi

