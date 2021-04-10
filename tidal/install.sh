apt-add-repository ppa:git-core/ppa
apt-get update
apt-get install git
git clone \
  --depth 1 \
  --filter=blob:none \
  --sparse \
  https://github.com/KristofferKarlAxelEkstrand/AKWF-FREE \
;
cd AKWF-FREE
git sparse-checkout init --cone
git sparse-checkout set AKWF
