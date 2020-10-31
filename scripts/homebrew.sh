#!/bin/bash

#To use fzf in Vim, add the following line to your .vimrc:
#  set rtp+=/usr/local/opt/fzf
brew install \
    jq \
    bit-git \
    fd \
    lazygit \
    fzf \
    peco \
    fzy \
    thefuck \
    neovim \
    ripgrep \
    telnet \
    tmux \
    httpie \
    you-get \
    gh \
    bat \
    bats \
    exa \
    htop \
    yarn \
    yq \
    gradle \
    infer \
    mpv \
    asciinema \
    croc \
    ffmpeg \
    fontconfig \
    cocoapods \
    glow \
    imageoptim-cli \
    parallel \
    sqlite \
    wrk \
    vault \
    tesseract \
    tesseract-lang \
    grpcurl \
    perl \
    git \
    git-gui \
    reattach-to-user-namespace \
    fpp

# ytt kpt kapp

#-------------------------------
# DevOps
brew install \
    aws-iam-authenticator \
    docker-credential-helper \
    eksctl \
    krew \
    kompose \
    ansible \
    ansible-lint \
    vagrant \
    dive \
    kustomize \
    minikube \
    kubectx \
    docker-machine \
    docker-compose \
    helm \
    kubectl \
    terraform \
    terragrunt \
    k9s \
    buildkit \
    kops \
    stern \
    skaffold \
    earthly \
    buildpacks/tap/pack \
    tektoncd-cli \
    teleconsole \
    velero \
    packer

brew cask install \
    fly
# Git toolbelt
brew tap nvie/tap
brew install nvie/tap/git-toolbelt
# Telepresence
brew cask install osxfuse
brew install datawire/blackbird/telepresence
#-------------------------------

# Language version manager
brew install \
    pyenv

# Homebrew Fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code \
    font-cascadia-code-pl

# Desktop Application
brew cask install \
    github \
    authy \
    google-chrome \
    microsoft-edge \
    vivaldi \
    brave-browser \
    lastpass \
    discord \
    visual-paradigm-ce
brew install \
    another-redis-desktop-manager \
    vagrant-manager \
    bloomrpc \
    virtualbox \
    jmeter \
    visual-studio-code

# Refernce:
# https://github.com/nvbn/thefuck
# https://github.com/chubin/cheat.sh