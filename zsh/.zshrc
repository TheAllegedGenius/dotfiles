if [[ $EUID == 0 ]]; then
  PROMPT="%B%F{141}%n%f%b %F{159}%~%f%F{40} # %f"
else
#  PROMPT="%B%F{141}%n%f%b %F{159}%~%f%F{40} ❯ %f"
   PROMPT="%B%F{135}%n%f%b: %F{159}%~%f %F{40}>%f "
fi

alias ls='ls --color=auto'

# Change to directory without 'cd' and no error if there is no match
setopt autocd nomatch

# Disable annoying beep
unsetopt beep

# Useful functions
source "$ZDOTDIR/zsh-functions"

# Normal files to source

bindkey -M vicmd 'h' backward-char

# Plugins
add_plugin "zsh-users/zsh-syntax-highlighting"
add_plugin "zsh-users/zsh-autosuggestions"

# Vim keybinding
bindkey -v

# Aliases
alias zshrc="vim ~/.config/zsh/.zshrc"
alias vimrc="vim ~/.vimrc"
alias cdcs="cd ~/Documents/CS"
alias python=/opt/homebrew/bin/python3
