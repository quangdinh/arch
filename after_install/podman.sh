#!/usr/bin/env bash

set -e

sudo pacman -S --noconfirm podman podman-docker podman-compose
sudo touch /etc/containers/nodocker
