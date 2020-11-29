#!/bin/bash

acpi -b | awk -F'[,:%]' '{print $2, $3}' | {
	read -r status capacity

	if [ "$status" = Discharging -a "$capacity" -lt 6 ]; then
		logger "Critical battery threshold"
    dbus-send --system / net.nuetzlich.SystemNotifications.Notify 'string:Low battery!' 'string:Your system will be hibernated in 60 seconds.'
    sleep 60
		sudo systemctl hibernate
	fi

  if [ "$status" = Discharging -a "$capacity" -lt 15 ]; then
    dbus-send --system / net.nuetzlich.SystemNotifications.Notify 'string:Low battery!' 'string:Plug in the charger.'
  fi
}

