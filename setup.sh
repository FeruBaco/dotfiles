#!/usr/bin/env bash
stow .

ln -sf $DOTFILES_PATH/git/.gitconfig ~/.gitconfig
ln -sf $DOTFILES_PATH/git/.gitignore_global ~/.gitignore_global
ln -sf $DOTFILES_PATH/zshrc/.zshrc ~/.zshrc