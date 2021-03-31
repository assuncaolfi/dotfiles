# neovim
git clone https://github.com/neovim/neovim &&
cd neovim &&
make CMAKE_BUILD_TYPE=RelWithDebInfo &&
sudo make install &&
cd .. &&
rm -r -f neovim &&
cp init.vim ~/.config/nvim/init.vim &&

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' &&
       
# Plugin
nvim +PluginInstall +qall &&

# Done
echo 'Done!'
