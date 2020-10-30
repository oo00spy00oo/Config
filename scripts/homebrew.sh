#!/bin/bash

#To use fzf in Vim, add the following line to your .vimrc:
#  set rtp+=/usr/local/opt/fzf
brew install \
    jq \
    bit-git \
    visual-studio-code \
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
    vagrant-manager \
    ansible \
    ansible-lint \
    ripgrep \
    another-redis-desktop-manager \
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
    bloomrpc \
    minikube \
    virtualbox \
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
    jmeter \
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
    eksctl

# ytt kpt kapp

# Homebrew cask
brew cask install \
    fly \
    github \
    authy \
    google-chrome \
    microsoft-edge \
    vivaldi \
    brave-browser \
    lastpass \
    discord

# Git toolbelt
brew tap nvie/tap
brew install nvie/tap/git-toolbelt

# Telepresence
brew cask install osxfuse
brew install datawire/blackbird/telepresence

# Homebrew Fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code \
    font-cascadia-code-pl

# Refernce:
# https://github.com/nvbn/thefuck
# https://github.com/chubin/cheat.sh