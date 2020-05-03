#!/bin/bash
pushd $HOME
curl -fsSL https://starship.rs/install.sh | bash -s -- -b ~/.local/bin/
curl -L https://get.oh-my.fish | fish
pushd $HOME
popd
