#!/bin/bash
WIFI_STATUS=$(nmcli radio wifi)
if [ "$WIFI_STATUS" == "disabled" ]; then
  nmcli radio wifi on
  notify-send --urgency=low 'WiFi enabled!'
else
  nmcli radio wifi off
  notify-send --urgency=low 'WiFi disabled!'
fi
