#!/bin/bash

# dependencies
apt-add-repository -y ppa:git-core/ppa
apt-get update
apt-get install -y \
  a2jmidid \
  build-essential \
  cabal-install \
  jackd2 \
  git \
  tmux
adduser $USER group

# supercollider
git clone https://github.com/lvm/build-supercollider
cd build-supercollider
sh build-supercollider.sh
sh build-sc3-plugins.sh

# tidalcycles
cabal update
cabal install tidal
# superdirt
sclang install-superdirt.sc

# tidalvim
cd ~/.local/share/nvim/plugged/vim-tidal
make
make install
cd -

# samples 
git clone \
  --depth 1 \
  --filter=blob:none \
  --sparse \
  https://github.com/KristofferKarlAxelEkstrand/AKWF-FREE \
;
cd AKWF-FREE
git sparse-checkout init --cone
git sparse-checkout set AKWF
