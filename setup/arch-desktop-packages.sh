trizen -Sy --needed i3-gaps i3blocks i3lock scrot imagemagick \
    pulseaudio pulseaudio-alsa pavucontrol \
    xorg-server xorg-xrandr mesa-demos \
    lightdm lightdm-gtk-greeter \
    keepassxc \
    dunst rofi picom feh \
    spirv-tools vulkan-devel \
    firefox libx264 gedit \
    noto-fonts noto-fonts-extra ttf-droid ttf-ubuntu-font-family \
    gnumeric gimp libreoffice \
    breeze \
    ntfs-3g \
    neomutt offlineimap pass alot w3m afew isync \
    signal-desktop alacritty  polybar \
    blender inkscape \
    light mpd \
    slack-desktop discord \
    arc-gtk-theme arc-icon-theme arc-solid-gtk-theme \
    imgur-screenshot-git \
    siji bdf-unifont ttf-font-awesome-4 ttf-material-icons-git ttf-font-awesome \
    ncmpcpp htop \
    evince

sudo systemctl enable lightdm.service
mkdir -p ~/.mpd/
