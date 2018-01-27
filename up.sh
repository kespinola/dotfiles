#!/usr/bin/env bash

if [ -x "$(command -v brew)" ]; then
  echo "Brew already installed"
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

env RCRC=$HOME/.dotfiles/rcrc rcup

./macos.sh

brew bundle


