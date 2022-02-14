git clone https://github.com/assuncaolfi/dotfiles
mkdir ~/.config/nvim
cp dotfiles/init.vim ~/.config/nvim/init.vim
sudo pacman -Syyu \
  neovim \
  qutebrowser \
  r 
yay -Sy neovim-plug-git
nvim +PlugInstall +qall

