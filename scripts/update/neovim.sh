#!/bin/bash

# ### NeoVim
echo "Updating NeoVim..."
nvim --headless +PlugUpdate +qall
nvim --headless +PlugUpgrade +qall