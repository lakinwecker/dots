#!/bin/bash
paru -Syu --needed hyprland eww-wayland-git swaylock-effects-git swayidle \
    lib32-libpulse lib32-alsa-plugins \
    wayland wl-clipboard mesa-demos hyprpaper sddm-git \
    rofi-lbonn-wayland-git \
    socat macchina\
    pulseaudio pulseaudio-alsa pavucontrol \
    imagemagick \
    keepassxc \
    imv \
    spirv-tools vulkan-devel \
    firefox libx264 gedit \
    noto-fonts noto-fonts-extra ttf-droid ttf-ubuntu-font-family powerline-fonts \
    gnumeric gimp libreoffice \
    breeze \
    ranger python-pillow atool elink ffmpegthumbnailer highlight poppler mediainfo libcaca \
    ntfs-3g \
    neomutt offlineimap pass alot afew isync \
    kitty \
    blender inkscape \
    light mpd mpc \
    slack-desktop webcord zulip-desktop signal-desktop \
    arc-gtk-theme arc-icon-theme arc-solid-gtk-theme \
    wayshot-bin slurp wl-copy\
    siji-git bdf-unifont ttf-font-awesome-4 ttf-material-icons-git ttf-font-awesome \
    ncmpcpp htop \
    python-pyaml \
    zathura zathura-cb zathura-djvu zathura-ps zathura-pdf-mupdf

mkdir -p ~/.mpd/
