#!/bin/bash

# Homebrew
brew update
brew upgrade
brew upgrade --cask
brew cleanup

# SDK Man
sdk update
sdk upgrade

# Prezto
zprezto-update

# nvm upgrade
nvm upgrade

# Update .oh-my-tmux
cd ~/.tmux && git pull