#!/bin/bash

echo Creating dotfiles directory...
mkdir -p ~/.dotfiles
mkdir -p ~/Temp

sudo apt install git

git clone https://github.com/Tiemenerikjansen/Dotfiles.git ~/.dotfiles



