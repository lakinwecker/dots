#!/bin/bash
sudo ln -s /home/lakin/dotfiles2/setup/suspend@.service /etc/systemd/system/suspend@.service
sudo ln -s /home/lakin/dotfiles2/setup/resume@.service /etc/systemd/system/resume@.service
sudo systemctl enable suspend@lakin
sudo systemctl enable resume@lakin
trizen -Syu --needed powertop brightnessctl network-manager-applet laptop-mode-tools acpid tlp xf86-input-evdev
