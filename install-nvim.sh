#!/bin/bash

# neovim
git clone https://github.com/neovim/neovim
cd neovim
make distclean
make CMAKE_BUILD_TYPE=RelWithDebInfo 
sudo make install
cd ..
rm -r -f neovim

# vimrc
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qall

