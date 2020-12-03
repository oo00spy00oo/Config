# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    # autoenv
    autojump
    colored-man-pages
    git
    # kubectl
    docker
    git-flow-avh
    docker-compose
    docker-machine
    colorize
    aws
    ansible
    osx
    web-search
    sdk
    tmux
    thefuck
    terraform
    vagrant
    virtualenv
    zsh-navigation-tools
    zsh-interactive-cd
    zsh_reload
    z
    frontend-search
    )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#-----------------------
# Autocomplete section
# BEGIN
# Kubectl
if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi
# Fly CLI
if [ $commands[fly] ]; then source <(fly completion --shell zsh); fi
# Terraform
if [ $commands[terraform] ]; then complete -o nospace -C /usr/local/bin/terraform terraform; fi
# nvm (Node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# pip
eval $(pip3 completion --zsh)
# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# rbenv
if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi
# Git bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
# Helm
if [ $commands[helm] ]; then source <(helm completion zsh); fi
# eksctl
if [ $commands[eksctl] ]; then fpath=($fpath ~/.zsh/completion); fi
# END
#-----------------------

# Prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

## BEGIN Zinit plugins ###
# THEME
# zinit light denysdovhan/spaceship-prompt

zinit wait lucid for \
    atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
        zdharma/fast-syntax-highlighting \
    blockf \
        zsh-users/zsh-completions \
    atload"!_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions

zinit for \
    light-mode  zsh-users/zsh-syntax-highlighting \
    light-mode  zsh-users/zsh-history-substring-search \
    light-mode  marzocchi/zsh-notify \
    light-mode  zdharma/zshelldoc \
    light-mode  zdharma/zui \
    light-mode  zdharma/zzcomplete \
    light-mode  zdharma/zconvey \
    light-mode  zdharma/history-search-multi-word

# light-mode  zdharma/zbrowse
# zinit light "zpm-zsh/autoenv"
zinit light "tj/git-extras"
zinit light "chrissicool/zsh-bash"
zinit light "arzzen/calc.plugin.zsh"
zinit light "b4b4r07/emoji-cli"
zinit light "changyuheng/fz"
zinit light "Aloxaf/fzf-tab"
zinit light "mafredri/zsh-async"
zinit light "qoomon/zsh-lazyload"
zinit light "zpm-zsh/ls"
zinit light "zpm-zsh/colors"
zinit light "zpm-zsh/clipboard"
zinit light "zpm-zsh/material-colors"
zinit light "zpm-zsh/pr-zcalc"
zinit light "zpm-zsh/zshmarks"
zinit light "psprint/zsh-cmd-architect"
zinit light "psprint/zsh-editing-workbench"
zinit light "Dabz/kafka-zsh-completions"

zinit light "Dbz/kube-aliases"
zinit light "supercrabtree/k"
zinit light "bobthecow/git-flow-completion"

export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
zinit light "lukechilds/zsh-nvm"

zinit ice atload"zpcdreplay" atclone'./zplug.zsh'
zinit light g-plane/zsh-yarn-autocompletions
# zinit light "marlonrichert/zsh-autocomplete"

# zinit light "b4b4r07/enhancd"

# For fzf: https://zdharma.org/zinit/wiki/Zinit-Packages/
zinit pack for fzf
### END Zinit plgins ###

# fzf (auto install via homebrew)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Perl
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

# Source profiles
source $HOME/.bash_profile
source $HOME/.bash_aliases
source $HOME/.local_profile
source $HOME/.kb_alias

# Add iterm2 shell integration
# https://iterm2.com/documentation-shell-integration.html
source ~/.iterm2_shell_integration.zsh

autoload -U +X bashcompinit && bashcompinit

autoload -U compinit && compinit

# Auto jump
# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Starship theme
eval "$(starship init zsh)"