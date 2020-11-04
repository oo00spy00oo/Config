#!/bin/bash

# ### SDK Man
echo "Updating SDK Man..."
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk update
sdk upgrade
sdk selfupdate force