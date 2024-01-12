# Setting up Node version manager (NVM)
export NVM_DIR="$HOME/.config/nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

export path=(
    "/bin" 
    "/sbin"
    "/usr/bin"
    "/usr/sbin"
    "/usr/local/bin"
    "$HOMEBREW_PREFIX/bin"
)
