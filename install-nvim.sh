#!/bin/bash

# neovim
apt-get update
apt-get install -y \
  gperf \ 
  luajit \ 
  luarocks \ 
  libuv1-dev \ 
  libluajit-5.1-dev \ 
  libunibilium-dev \ 
  libmsgpack-dev \ 
  libtermkey-dev \ 
  libvterm-dev \ 
  libutf8proc-dev \ 
  libtool-bin
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

# Done
echo 'Done!'
