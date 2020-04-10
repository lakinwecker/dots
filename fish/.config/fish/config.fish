set -x PATH $PATH /home/lakin/.local/bin
set -x PATH $PATH /home/lakin/bin
set -x EDITOR nvim
set fish_greeting

starship init fish | source
