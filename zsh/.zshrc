if [[ $EUID == 0 ]]; then
  PROMPT="%B%F{141}%n%f%b %F{159}%~%f%F{40} # %f"
else
#  PROMPT="%B%F{141}%n%f%b %F{159}%~%f%F{40} ❯ %f"
   PROMPT="%B%F{135}%n%f%b: %F{159}%~%f %F{40}>%f "
fi

# Change to directory without 'cd' and no error if there is no match
setopt autocd nomatch

# Disable annoying beep
unsetopt beep

# Useful functions
source "$ZDOTDIR/zsh-functions"

bindkey -M vicmd 'h' backward-char

# Plugins
add_plugin "zsh-users/zsh-syntax-highlighting"
add_plugin "zsh-users/zsh-autosuggestions"

# Vim keybinding
bindkey -v

# Aliases
alias ls='ls --color=auto'
alias zshrc="vim ~/.config/zsh/.zshrc"
alias vimrc="vim ~/.vimrc"

if [ "$(uname)" = "Darwin" ]; then
    alias python=/opt/homebrew/bin/python3
    export icloud="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
fi
