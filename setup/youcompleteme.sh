#!/usr/bin/bash
sudo pacman -Sy clang npm nodejs mono mono-tools mono-debugger go go-tools
sudo npm install -g typescript
cd ~/.vim/plugged/YouCompleteMe
./install.py --all --system-libclang
