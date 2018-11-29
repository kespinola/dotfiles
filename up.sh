#!/usr/bin/env bash

if [ -x "$(command -v brew)" ]; then
  echo "Brew already installed"
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

./install.sh

./macos.sh

brew install rcmdnk/file/brew-file
brew bundle

# Install vim-plug Plugin Manager
echo "===Installing vim-plug==="
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
