#!/bin/bash

sudo apt install \
  git \
  neovim \
  exa \
  tree \
  curl
  

echo Creating dotfiles directory...
mkdir -p ~/.dotfiles
mkdir -p ~/.config/nvim



git clone https://github.com/Tiemenerikjansen/Dotfiles.git ~/.dotfiles

ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/init.vim ~/.config

sudo apt install zsh
chsh -s $(which zsh)
zsh

