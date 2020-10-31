#!/bin/bash

### Homebrew
brew update
brew upgrade
brew upgrade --cask
brew cleanup

### SDK Man
sdk update
sdk upgrade

### Prezto
zprezto-update

### zinit
# To update Zinit issue zinit self-update in the command line.
zinit self-update
# To update all plugins and snippets, issue zinit update
zinit update

# nvm upgrade
nvm upgrade

# Update .oh-my-tmux
cd $HOME/Config && git submodule update
