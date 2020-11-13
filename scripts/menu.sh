#!/bin/bash
pkill bemenu || bemenu-run -ni -l 7 -p "Launch: " --fn "DejaVu Sans Mono" --nb "#222222" --tb "#222222" --fb "#222222" --nf "#FFFFFF" --hf "#9CD45B" --tf "#9CD45B" --hb "#424242" --monitor $(/home/$USER/scripts/menu.py)
