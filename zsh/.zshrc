
for config (~/.zsh/*.zsh) source $config

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial django debian command-not-found kate python ssh-agent svn vagrant archlinux cargo nvm)

zstyle :omz:plugins:ssh-agent identities id_rsa_strabs id_rsa_repos id_rsa_personal id_ed25519_school id_ed25519_personal

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source ~/.jabba/jabba.sh

# Customize to your needs...

export TAICHI_NUM_THREADS=8
export TAICHI_REPO_DIR=/home/lakin/school-repos/taichi/taichi
export PYTHONPATH=/home/lakin/school-repos/taichi/taichi/python/:/home/lakin/.local/lib/python3.7/site-packages/
export PATH=/home/lakin/school-repos/taichi/taichi/bin/:/home/lakin/.cargo/bin:/home/lakin/.cargo/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/opt/cuda/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/lakin/bin:/home/lakin/.local/bin:/home/lakin/.gem/ruby/2.5.0/bin:/home/lakin/.npm/bin:/home/lakin/software/VulkanSDK/1.0.65.0/x86_64/bin:/opt/cuda/bin:/home/lakin/software/android/tools
export CUDA_HOME=/opt/cuda
export LD_LIBRARY_PATH="/opt/cuda/lib64/"
export C_INCLUDE_PATH="/opt/cuda/include"
export CPLUS_INCLUDE_PATH="/opt/cuda/include"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -s "/home/lakin/.jabba/jabba.sh" ] && source "/home/lakin/.jabba/jabba.sh"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
