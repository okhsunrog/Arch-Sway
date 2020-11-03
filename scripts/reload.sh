#!/bin/bash
pactl set-sink-volume @DEFAULT_SINK@ +0%
swaymsg reload
