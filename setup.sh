#!/bin/bash

sudo apt -y install \
  git \
  neovim \
  exa \
  tree \
  neofetch \
  zsh \
  curl
  
echo Creating dotfiles directory...
mkdir -p ~/.dotfiles
mkdir -p ~/.config/nvim
touch .config/nvim/init.vim

git clone https://github.com/Tiemenerikjansen/Dotfiles.git ~/.dotfiles

ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/init.vim ~/.config/nvim

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" "" --unattended --keep-zshrc

chsh -s $(which zsh)
zsh



