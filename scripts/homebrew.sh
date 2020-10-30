#!/bin/bash

#To use fzf in Vim, add the following line to your .vimrc:
#  set rtp+=/usr/local/opt/fzf
brew install \
    jq \
    bit-git \
    docker-credential-helper \
    fd \
    lazygit \
    fzf \
    peco \
    kubectl \
    terraform \
    fzy \
    thefuck \
    neovim \
    vagrant \
    ansible \
    ansible-lint \
    ripgrep \
    telnet \
    tmux \
    k9s \
    httpie \
    you-get \
    dive \
    gh \
    earthly \
    bat \
    bats \
    exa \
    htop \
    minikube \
    kustomize \
    kops \
    stern \
    skaffold \
    buildpacks/tap/pack \
    tektoncd-cli \
    teleconsole \
    yarn \
    yq \
    buildkit \
    gradle \
    helm \
    infer \
    kubectx \
    docker-machine \
    docker-compose \
    mpv \
    asciinema \
    croc \
    aws-iam-authenticator \
    ffmpeg \
    fontconfig \
    cocoapods \
    glow \
    imageoptim-cli \
    kompose \
    parallel \
    packer \
    sqlite \
    terragrunt \
    velero \
    wrk \
    vault \
    tesseract \
    grpcurl \
    perl \
    eksctl \
    krew
# ytt kpt kapp

# Homebrew cask
brew cask install \
    fly

# Language version manager
brew install \
    pyenv

# Telepresence
brew cask install osxfuse
brew install datawire/blackbird/telepresence

# Homebrew Fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code \
    font-cascadia-code-pl

# Git toolbelt
brew tap nvie/tap
brew install nvie/tap/git-toolbelt

# Desktop Application
brew cask install \
    github \
    authy \
    google-chrome \
    microsoft-edge \
    vivaldi \
    brave-browser \
    lastpass \
    discord
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