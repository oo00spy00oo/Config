#!/bin/bash

### Homebrew
echo "Updating Flutter..."
if [ $commands[flutter] ]; then
    cd $HOME/development/flutter && git pull

    flutter upgrade --force
fi