. ~/.config/fish/aliases.fish

set -x PATH $PATH /home/lakin/.local/bin
set -x PATH $PATH /home/lakin/bin
set -x PATH $PATH /home/lakin/gbin
set -x PATH $PATH /home/lakin/.pgenv/bin
set -x PATH $PATH /home/lakin/.pgenv/pgsql/bin
set -x PATH $PATH /home/lakin/.local/share/coursier/bin
set -x NOTMUCH_CONFIG /home/lakin/.config/notmuch/config
set -x CMAKE_BUILD_PARALLEL_LEVEL 16
set -x EDITOR nvim
set fish_greeting
set -x BROWSER /usr/bin/firefox
set -x CMAKE_EXPORT_COMPILE_COMMANDS 1
. ~/.asdf/plugins/java/set-java-home.fish

starship init fish | source
source ~/.asdf/asdf.fish
