export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Thefuck
eval $(thefuck --alias)

# Make Neovim as default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# Docker BUILDKIT
export DOCKER_BUILDKIT=1

# ZSH colorize
export ZSH_COLORIZE_TOOL=chroma
export ZSH_COLORIZE_STYLE="colorful"

# ZSH Tmux
export ZSH_TMUX_ITERM2=true

export PATH="/usr/local/opt/ncurses/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"

# BuildPacks
. $(pack completion --shell zsh)

# FZF config
export FZF_DEFAULT_COMMAND='fd --type f --color=always --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'

[[ -s "/Users/oo00spy00oo/.gvm/scripts/gvm" ]] && source "/Users/oo00spy00oo/.gvm/scripts/gvm"