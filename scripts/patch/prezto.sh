#!/usr/bin/env bash

git clone --recursive https://github.com/sorin-ionescu/prezto.git ${ZDOTDIR:-$HOME}/.zprezto

# prezto-contrib
cd ${ZPREZTODIR}
git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib