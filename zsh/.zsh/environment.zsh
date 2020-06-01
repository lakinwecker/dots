typeset -T VULKAN_SDK vulkan_sdk
typeset -U vulkan_sdk;
vulkan_sdk+=($HOME/software/VulkanSDK/1.0.65.0/x86_64)
export VULKAN_SDK

# typeset -T BOOST_ROOT boost_root
# typeset -U boost_root;
# boost_root+=($HOME/software/boost_1_65_1)
# export BOOST_ROOT

# set PATH
typeset -U path;
path+=($HOME/bin)
path+=($HOME/sbin)
path+=($HOME/gbin)
path+=($HOME/.local/bin)
path+=($HOME/.cargo/bin)
path+=($HOME/.gem/ruby/2.5.0/bin)
path+=($HOME/.npm/bin)
path+=($HOME/.cabal/bin)
path+=($HOME/sbin2)
path+=($vulkan_sdk/bin)

typeset -U ld_library_path
ld_library_path+=($vulkan_sdk)
ld_library_path+=($boost_root/stage/lib)


# Cargo
source $HOME/.cargo/env

# set PYTHONPATH
typeset -T PYTHONPATH pythonpath
typeset -U pythonpath;
pythonpath+=($HOME/.local/lib/python3.6/site-packages/)
export PYTHONPATH

# Some basic term variables
export TERM='xterm-256color'
export VIRTUAL_ENV_DISABLE_PROMPT=true
export EDITOR=vim
export SBT_OPTS="-Xms64M -Xmx2048M -Xss4M -XX:ReservedCodeCacheSize=64m -XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC"
export PIPENV_VENV_IN_PROJECT=1

# Compilation flags
export ARCHFLAGS="-arch x86_64"

