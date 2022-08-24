#!/bin/bash
paru -Syu --needed clang clang-tools-extra cmake rsync gdb gcc \
       clangd fzf neovim python-neovim python-pylint ripgrep \
       lazygit python-virtualenv python-pipenv python36 python37 \
       vagrant virtualbox virtualbox-host-modules-arch linux-headers \
       bloop gulp sbt pass ruby-sass watchman \
       bear git-delta

# Rustup for rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl -Lo cs https://git.io/coursier-cli-linux && chmod +x cs && mv cs ~/gbin/ && ~/gbin/cs --help
# ASDF for everything else
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
