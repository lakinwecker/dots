#!/bin/bash
pushd $HOME
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
popd
pushd $HOME
git clone https://github.com/powerline/fonts "/home/lakin/aur/powerline-fonts" || cd "/home/lakin/aur/powerline-fonts" && git fetch origin && git pull origin master && 
cd "/home/lakin/aur/powerline-fonts" && ./install.sh
git clone https://github.com/denysdovhan/spaceship-prompt.git "/home/lakin/aur/themes/spaceship-prompt" || cd "/home/lakin/aur/themes/spaceship-prompt" && git fetch origin && git pull origin master
ln -s "/home/lakin/aur/themes/spaceship-prompt/spaceship.zsh-theme" "/home/lakin/.oh-my-zsh/themes/spaceship.zsh-theme"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
popd
