export DOTFILES_PATH="/Users/feru/.dotfiles"
eval "$(/opt/homebrew/bin/brew shellenv)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Adding Starship theme
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# export NVM_DIR="$HOME/.config/nvm"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Aliases

alias la=tree
alias cat=bat

# List

alias ls='ls -p -G'
alias la='ls -A'
alias ll='ls -l'
alias lla='ll -A'

# Git
alias g='git'
alias gco='git checkout'
alias gs='git status -sb'

# Extras
alias vi='nvim'
alias vim='nvim'

export PATH=$HOME/development/flutter/bin:$PATH
export PATH="/opt/homebrew/opt/php@8.2/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"










# Functions 

function mdir() {
  dir="$1"
  mkdir $dir && cd $dir
}

function export_brew_apps() {
  brew services stop --all
  brew bundle dump --file="$HOMEBREW_BUNDLE_FILE_PATH" --force
  echo 'Brew apps exported!'
}