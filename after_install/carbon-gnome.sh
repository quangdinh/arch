#!/usr/bin/env bash

set -e
./reflector.sh
./thinkpad.sh
./firewall.sh
./gnome.sh
./dark_mode.sh
./carbon-apps.sh
sudo ./hide_system_apps.sh
./remove_shortcut.sh
./fnm.sh
./omp.sh
./remmina.sh
