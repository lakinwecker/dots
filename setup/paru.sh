#!/bin/bash
sudo pacman -Syu base-devel
mkdir ~/aur/
cd ~/aur/
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -sri
