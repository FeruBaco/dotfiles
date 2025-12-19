#!/usr/bin/env bash
export DOTFILES_PATH="$HOME/dotfiles"

stow .

ln -sf $DOTFILES_PATH/git/.gitconfig ~/.gitconfig
ln -sf $DOTFILES_PATH/git/.gitignore_global ~/.gitignore_global
ln -sf $DOTFILES_PATH/zshrc/.zshrc ~/.zshrc
ln -sf $DOTFILES_PATH/zshrc/.zprofile ~/.zprofile