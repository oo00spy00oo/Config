#!/bin/bash

# YouCompleteMe
# Issue: YouCompleteMe unavailable: requires Vim compiled with Python
# Fixing YouCompleteMe with python3: https://github.com/neovim/pynvim
pip3 install pynvim
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all

# Patch font for NERD
# https://github.com/ryanoasis/nerd-font
brew cask install font-hack-nerd-font