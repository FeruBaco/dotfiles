setopt HIST_IGNORE_ALL_DUPS # Ignore history duplicates
setopt HIST_FCNTL_LOCK

# ZSH plugins
BREW_PREFIX="$(brew --prefix)"
source "$BREW_PREFIX/etc/profile.d/z.sh"
source "$BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$BREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
source "$BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
if type brew &>/dev/null; then
    FPATH="$BREW_PREFIX/share/zsh-completions:$FPATH"
    autoload -Uz compinit
    compinit -u
  fi

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_MANUAL_REBIND=1
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Adding Starship theme
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# nvm
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias ls='ls -p -G'
alias la='ls -A'
alias ll='ls -l'
alias lla='ll -A'

alias vi='nvim'
alias vim='nvim'

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

command -v pyenv >/dev/null && eval "$(pyenv init -)"