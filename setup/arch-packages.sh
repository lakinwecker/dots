trizen -Syu --needed sudo syncthing neovim tmux ripgrep unzip python-virtualenv \
    stow net-tools pkgfile inetutils ponysay openssh ntp

sudo systemctl enable syncthing@lakin.service
sudo systemctl enable sshd
sudo systemctl start sshd
