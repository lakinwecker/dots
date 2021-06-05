#!/bin/bash
trizen -Syu --needed clang clang-tools-extra cmake rsync gdb gcc \
       ccls fzf neovim python-neovim python-pylint ripgrep \
       tig python-virtualenv python-pipenv python36 subversion \
       vagrant virtualbox virtualbox-host-modules-arch linux-headers \
       bloop gulp sbt pass ruby-sass watchman

# Jabba for java
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
jabba install openjdk@1.14.0-1
# nvm for node
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
#nvm install 12
#nvm use 12
# Rustup for rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl -Lo cs https://git.io/coursier-cli-linux && chmod +x cs && mv cs ~/gbin/ && ~/gbin/cs --help
#/home/lakin/gbin/cs bootstrap  --java-opt -Xss4m --java-opt -Xms100m --java-opt -Dmetals.client=vim-lsc org.scalameta:metals_2.12:0.8.1 -r bintray:scalacenter/releases -r sonatype:snapshots -o /home/lakin/gbin/metals-vim -f
