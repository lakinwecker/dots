. ~/.config/fish/aliases.fish

set -x PATH $PATH /home/lakin/.local/bin
set -x PATH $PATH /home/lakin/bin
set -x PATH $PATH /home/lakin/gbin
set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths
set -x EDITOR nvim
set fish_greeting

fish_ssh_agent
starship init fish | source
source ~/.asdf/asdf.fish

[ -s "/home/lakin/.jabba/jabba.fish" ]; and source "/home/lakin/.jabba/jabba.fish"
