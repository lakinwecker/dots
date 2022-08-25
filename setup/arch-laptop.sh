#!/bin/bash
sudo ln -s /home/lakin/dots/setup/suspend@.service /etc/systemd/system/suspend@.service
#sudo ln -s /home/lakin/dots/setup/resume@.service /etc/systemd/system/resume@.service
sudo systemctl enable suspend@lakin
#sudo systemctl enable resume@lakin
paru -Syu --needed powertop light network-manager-applet acpid thermald i7z auto-cpufreq
usermod -aG video lakin
sudo systemctl enable thermald.service
sudo systemctl start thermald.service
sudo systemctl enable auto-cpufreq.service
sudo systemctl start auto-cpufreq.service
