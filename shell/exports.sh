export NVM_DIR="$HOME/.config/nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

export path=(
    "$HOME/bin"
    "$FERU_PATH/bin"
    "$DOTFILES_PATH/bin"
    "$HOME/go/bin"
    "$HOME/.cargo/bin"
    "/opt/homebrew/bin"
    "/usr/local/bin"
    "/usr/local/go/bin"
    "/bin"
    "/usr/bin"
    "/usr/sbin"
    "/sbin"
)
