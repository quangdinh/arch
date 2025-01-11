#!/usr/bin/env bash

set -e

sudo pacman -Syu --noconfirm yazi

xdg-mime default yazi.desktop inode/directory
