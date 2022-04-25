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
touch .config/nvim/init.vim

git clone https://github.com/Tiemenerikjansen/Dotfiles.git ~/.dotfiles


sudo apt install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

chsh -s $(which zsh)

ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/init.vim ~/.config

zsh

