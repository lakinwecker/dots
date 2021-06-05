. ~/.config/fish/aliases.fish

set -x PATH $PATH /home/lakin/.local/bin
set -x PATH $PATH /home/lakin/bin
set -x PATH $PATH /home/lakin/gbin
set -x PATH $PATH /home/lakin/.pgenv/bin
set -x PATH $PATH /home/lakin/.pgenv/pgsql/bin
set -x NOTMUCH_CONFIG /home/lakin/.config/notmuch/config
set -x CMAKE_BUILD_PARALLEL_LEVEL 8
set -x EDITOR nvim
set fish_greeting

starship init fish | source
source ~/.asdf/asdf.fish
