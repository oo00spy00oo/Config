#!/bin/bash

### Homebrew
echo "Updating Homebrew..."
brew update
brew upgrade
brew upgrade --cask
brew cleanup