#!/bin/bash
pkill bemenu || bemenu-run -ni -p "Launch: " --fn "DejaVu Sans Mono" --nb "#222222" --tb "#2AA198" --fb "#002B36" --nf "#93A1A1" --nb "#002B36" --hf "#FDF6E3" --tf "#FDF6E3" --hb "#6C71C4" --monitor $(/home/$USER/scripts/menu.py)
