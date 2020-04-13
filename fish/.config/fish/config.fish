. ~/.config/fish/aliases.fish

set -x PATH $PATH /home/lakin/.local/bin
set -x PATH $PATH /home/lakin/bin
set -x EDITOR nvim
set fish_greeting

starship init fish | source

[ -s "/home/lakin/.jabba/jabba.fish" ]; and source "/home/lakin/.jabba/jabba.fish"
