#!/bin/bash

# YouCompleteMe
# Issue: YouCompleteMe unavailable: requires Vim compiled with Python
# Fixing YouCompleteMe with python3: https://github.com/neovim/pynvim
pip install pynvim
cd ~/.config/nvim/bundle/YouCompleteMe
python install.py --all