#!/bin/bash

### Homebrew
brew update
brew upgrade
brew upgrade --cask
brew cleanup

# ### SDK Man
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk update
sdk upgrade

# ### Prezto
# Prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
zprezto-update

# ### NeoVim
nvim --headless +PlugUpdate +qall
nvim --headless +PlugUpgrade +qall

# ### zinit
source "$HOME/.zinit/bin/zinit.zsh"
# To update Zinit issue zinit self-update in the command line.
zinit self-update
# To update all plugins and snippets, issue zinit update
zinit update

# nvm upgrade
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm upgrade

# Update .oh-my-tmux
cd $HOME/Config && git submodule update
