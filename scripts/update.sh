#!/bin/bash

### Homebrew
echo "Updating Homebrew..."
brew update
brew upgrade
brew upgrade --cask
brew cleanup

# ### NeoVim
echo "Updating NeoVim..."
nvim --headless +PlugUpdate +qall
nvim --headless +PlugUpgrade +qall

# ### SDK Man
echo "Updating SDK Man..."
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk update
sdk upgrade

# ### Prezto
# Prezto
echo "Updating Prezto..."
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
zprezto-update

# ### zinit
echo "Updating zinit..."
source "$HOME/.zinit/bin/zinit.zsh"
# To update Zinit issue zinit self-update in the command line.
zinit self-update
# To update all plugins and snippets, issue zinit update
zinit update

# nvm upgrade
echo "Updating nvm..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm upgrade

# Update .oh-my-tmux
echo "Updating oh-my-tmux..."
cd $HOME/Config && git submodule update

echo "Finishing update!"