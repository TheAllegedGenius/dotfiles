# XDG Paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# zsh config dir
export ZDOTDIR=$HOME/.config/zsh

# editor variables
export EDITOR=nvim
export SUDO_EDITOR=rvim

export LANG=en_US.utf-8

if [ "$(uname)" = "Darwin" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
