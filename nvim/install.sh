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
Rscript -e 'install.packages("~/.local/share/nvim/plugged/Nvim-R/R/nvimcom/", repo = NULL, source = TRUE)'

# fonts
mkdir fira-code
cd fira-code
wget https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip
unzip Fira_Code_v5.2.zip
rm Fira_Code_v5.2.zip
sudo mv ttf /usr/share/fonts/opentype/FiraCode
fc-cache -fv
cd -
rm -r -f fira-code
