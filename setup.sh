#!/usr/bin/env bash
export DOTFILES_PATH="$HOME/dotfiles"

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#Install stow
brew install stow

# Initialize .config 
stow .

# Create symlinks
ln -sf $DOTFILES_PATH/git/.gitconfig ~/.gitconfig
ln -sf $DOTFILES_PATH/git/.gitignore_global ~/.gitignore_global
ln -sf $DOTFILES_PATH/zshrc/.zshrc ~/.zshrc
ln -sf $DOTFILES_PATH/zshrc/.zprofile ~/.zprofile