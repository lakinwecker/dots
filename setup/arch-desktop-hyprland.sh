#!/bin/bash
paru -Syu --needed hyprland eww-wayland-git swaylock-effects-git swayidle \
    lib32-libpulse lib32-alsa-plugins \
    wayland mesa-demos hyprpaper sddm-git \
    socat macchina\
    pulseaudio pulseaudio-alsa pavucontrol \
    imagemagick \
    keepassxc \
    sirula-git imv \
    spirv-tools vulkan-devel \
    firefox libx264 gedit \
    noto-fonts noto-fonts-extra ttf-droid ttf-ubuntu-font-family powerline-fonts \
    gnumeric gimp libreoffice \
    breeze \
    ranger python-pillow atool elink ffmpegthumbnailer highlight poppler mediainfo libcaca\
    ntfs-3g \
    neomutt offlineimap pass alot afew isync \
    signal-desktop kitty \
    blender inkscape \
    light mpd mpc \
    slack-desktop discord zulip-desktop \
    arc-gtk-theme arc-icon-theme arc-solid-gtk-theme \
    wayshot-bin slurp \
    siji-git bdf-unifont ttf-font-awesome-4 ttf-material-icons-git ttf-font-awesome \
    ncmpcpp htop \
    python-pyaml \
    zathura zathura-cb zathura-djvu zathura-ps zathura-pdf-mupdf

mkdir -p ~/.mpd/
