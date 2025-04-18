export DOTFILES_PATH="/Users/feru/.dotfiles"
eval "$(/opt/homebrew/bin/brew shellenv)"

setopt HIST_IGNORE_ALL_DUPS # Ignore history duplicates
setopt HIST_FCNTL_LOCK

# ZSH plugins
source $(brew --prefix)/etc/profile.d/z.sh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGEGST_MANUAL_REBIND=1
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)



# Adding Starship theme
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# export NVM_DIR="$HOME/.config/nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# Aliases

alias la=tree
# alias cat=bat

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
# export FLUTTER_ROOT="~/development/flutter"
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/platform-tools


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
