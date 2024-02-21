# XDG Paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# zsh config dir
export ZDOTDIR=$HOME/.config/zsh

# editor variables
export EDITOR=vim
export SUDO_EDITOR=rvim

export LANG=en_US.utf-8

if [ "$(uname)" == "Darwin" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Source brew coreutils and binaries before macOS default binaries
    local HB=/opt/homebrew/opt
    PATH="$HB/coreutils/libexec/gnubin:$PATH" # GNU coreutils
    PATH="$HB/findutils/libexec/gnubin:$PATH" # GNU find, xargs, and locate
    PATH="$HB/gawk/libexec/gnubin:$PATH" # GNU awk
    PATH="$HB/grep/libexec/gnubin:$PATH" # GNU grep
    PATH="$HB/gnu-sed/libexec/gnubin:$PATH" # GNU sed
    export PATH

    MANPATH="$HB/coreutils/libexec/gnuman:$PATH" # GNU coreutils man pages
    MANPATH="$HB/findutils/libexec/gnuman:$PATH" # GNU find, xargs, and locate man pages
    MANPATH="$HB/gawk/libexec/gnuman:$PATH" # GNU awk man pages
    MANPATH="$HB/grep/libexec/gnuman:$PATH" # GNU grep man pages
    MANPATH="$HB/gnu-sed/libexec/gnuman:$PATH" # GNU sed man pages
    export MANPATH
fi
