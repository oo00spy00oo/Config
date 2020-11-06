export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Thefuck
eval $(thefuck --alias)

# Make Neovim as default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# Docker BUILDKIT
export DOCKER_BUILDKIT=1

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# ZSH colorize
export ZSH_COLORIZE_TOOL=chroma
export ZSH_COLORIZE_STYLE="colorful"
export ZSH_COLORIZE_CHROMA_FORMATTER=terminal256

# ZSH Tmux
export ZSH_TMUX_ITERM2=true

export PATH="/usr/local/opt/ncurses/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"

# BuildPacks
[ -f /usr/local/bin/pack ] && . $(pack completion --shell zsh)

# Krew
export PATH="${PATH}:${HOME}/.krew/bin"

# FZF config
export FZF_DEFAULT_COMMAND='fd --type f --color=always --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'

### Fixing install python with pyenv
### Package: YouCompleteMe
# You must use a Python compiled with the --enable-framework flag. If using pyenv, you need to run the command:
# export PYTHON_CONFIGURE_OPTS="--enable-framework"
# before installing a Python version
export PYTHON_CONFIGURE_OPTS="--enable-framework"

# gvm
# [[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
# Golang
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOBIN}:${GOROOT}/bin"

# Flutter
export PATH="$PATH:$HOME/development/flutter/bin"

# nvm plugin
export NVM_LAZY=1

# # autoenv
# source $(brew --prefix autoenv)/activate.sh