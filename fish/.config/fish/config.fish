. ~/.config/fish/aliases.fish

set -x PATH $PATH /home/lakin/.local/bin
set -x PATH $PATH /home/lakin/bin
set -x PATH $PATH /home/lakin/gbin
set -x PATH $PATH /home/lakin/.pgenv/bin
set -x PATH $PATH /home/lakin/.pgenv/pgsql/bin
set -x CMAKE_BUILD_PARALLEL_LEVEL 32
set -x EDITOR nvim
set fish_greeting

starship init fish | source
source ~/.asdf/asdf.fish

[ -s "/home/lakin/.jabba/jabba.fish" ]; and source "/home/lakin/.jabba/jabba.fish"
