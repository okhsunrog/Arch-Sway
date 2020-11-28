#!/bin/bash

acpi -b | awk -F'[,:%]' '{print $2, $3}' | {
	read -r status capacity

	if [ "$status" = Discharging -a "$capacity" -lt 6 ]; then
		logger "Critical battery threshold"
    dbus-send --system / net.nuetzlich.SystemNotifications.Notify 'string:Low battery!' 'string:Your system will be hibernated in 60 seconds.'
    cvlc ~/scripts/critical.wav --play-and-exit
    sleep 60
		systemctl hibernate
	fi

  if [ "$status" = Discharging -a "$capacity" -lt 15 ]; then
    dbus-send --system / net.nuetzlich.SystemNotifications.Notify 'string:Low battery!' 'string:Plug in the charger.'
    cvlc ~/scripts/low.mp3 --play-and-exit
  fi
}

