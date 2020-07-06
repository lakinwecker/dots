
for config (~/.zsh/*.zsh) source $config


# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="spaceship"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git django python ssh-agent svn vagrant archlinux cargo dotenv)
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa_personal id_ed25519_personal id_ed25519_school id_rsa id_rsa_strabs id_rsa_repos

# User configuration
bindkey -e

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

fpath+=~/.zfunc
source $ZSH/oh-my-zsh.sh
# Customize to your needs...
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -s "/home/lakin/.jabba/jabba.sh" ] && source "/home/lakin/.jabba/jabba.sh"

eval "$(starship init zsh)"

# fnm
export PATH=/home/lakin/.fnm:$PATH
eval "`fnm env --multi`"


