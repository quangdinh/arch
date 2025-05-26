#!/usr/bin/env bash

set -e
./reflector.sh
./thinkpad.sh
./firewall.sh
./gnome.sh
./dark_mode.sh
sudo ./hide_system_apps.sh
sudo ./terminal-apps.sh
./remove_shortcut.sh
