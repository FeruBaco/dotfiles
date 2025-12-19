# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# idk
export LC_ALL=en_US.UTF8
export LANG=en_US.UTF-8

# custom
export DOTFILES_PATH="$HOME/dotfiles"
export XDG_CONFIG_HOME="$HOME/.config"

# arioac
export PATH="/opt/homebrew/opt/php@8.2/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# nova
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-21.jdk/Contents/Home
eval "$(pyenv init --path)"


# export PATH=$PATH:$HOME/.config/emacs/bin
# Not sure what it is ->>>>>>>> . "$HOME/.local/bin/env"