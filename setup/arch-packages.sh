#!/bin/bash
paru -Syu --needed sudo syncthing neovim zellij ripgrep unzip python-virtualenv \
    stow net-tools pkgfile inetutils ponysay openssh ntp fish keychain \
    bat \
    btop \
    cava \
    dust-git \
    exa \
    fd \
    fzf \
    zoxide \
    lsd

sudo systemctl enable syncthing@lakin.service
sudo systemctl enable sshd
sudo systemctl start sshd
sudo systemctl enable ntpd.service
sudo systemctl start ntpd.service
