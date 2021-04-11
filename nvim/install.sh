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

# Nvim-R
# TODO fix, should not be Rscript
# TODO make this conditional on which R not being null
# Rscript -e 'install.packages("renv"); renv::install("~/.local/share/nvim/plugged/Nvim-R/R/nvimcom/")'

# fonts
mkdir hasklig
cd hasklig
wget https://github.com/i-tu/Hasklig/releases/download/1.2/Hasklig-1.2.zip
unzip Hasklig-1.2.zip
rm Hasklig-1.2.zip
mv hasklig /usr/share/fonts/opentype/.
fc-cache -fv
