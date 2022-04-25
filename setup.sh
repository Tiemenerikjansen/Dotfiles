#!/bin/bash

sudo apt -y install \
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
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
chsh -s $(which zsh)
zsh

