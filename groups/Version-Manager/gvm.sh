#!/bin/bash

# Golang version Manager
xcode-select --install
brew update
brew install mercurial
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)