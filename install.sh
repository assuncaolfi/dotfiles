#!/bin/bash

# neovim
if [ "$1" = "source" ]; then
  git clone https://github.com/neovim/neovim
  cd neovim
  make CMAKE_BUILD_TYPE=RelWithDebInfo
  make install
  cd ..
  rm -r -f neovim
else
  apt-get update
  apt-get -y build-dep neovim
  apt-get -y install neovim 
fi &&

# vimrc
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim &&

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qall &&

# Done
echo 'Done!'
