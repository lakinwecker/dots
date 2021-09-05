trizen -Syu --needed sudo syncthing neovim tmux ripgrep unzip python-virtualenv \
    stow net-tools pkgfile inetutils ponysay openssh ntp fish keychain \
    fd \ # user friendly find replacement
    bat \ # cat clone with syntax hihghlighting and git intgration
    dust-git \ # better du 
    lsd \ # better ls

sudo systemctl enable syncthing@lakin.service
sudo systemctl enable sshd
sudo systemctl start sshd
