. ~/.config/fish/aliases.fish

set -x PATH $PATH /home/lakin/.local/bin
set -x PATH $PATH /home/lakin/bin
set -x PATH $PATH /home/lakin/gbin
set -x PATH $PATH /home/lakin/.pgenv/bin
set -x PATH $PATH /home/lakin/.pgenv/pgsql/bin
set -x PATH $PATH /home/lakin/.local/share/coursier/bin
set -x PATH $PATH /home/lakin/.yarn/bin
set -x PATH $PATH /home/lakin/go/bin
set -x GOPATH $GOPATH /home/lakin/go
set -x NOTMUCH_CONFIG /home/lakin/.config/notmuch/config
set -x CMAKE_BUILD_PARALLEL_LEVEL 16
set -x EDITOR nvim
set -x CONAN_REVISIONS_ENABLED 1
set fish_greeting
set -x BROWSER /usr/bin/firefox
set -x CMAKE_EXPORT_COMPILE_COMMANDS 1
set -x ZK_NOTEBOOK_DIR /home/lakin/personal/zk/eldubrain
. ~/.asdf/plugins/java/set-java-home.fish

starship init fish | source
source ~/.asdf/asdf.fish

function envsource
  for line in (cat $argv | grep -v '^#')
    set item (string split -m 1 '=' $line)
    set -gx $item[1] $item[2]
    echo "Exported key $item[1]"
  end
end

# pnpm
set -gx PNPM_HOME "/home/lakin/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
