#!/bin/bash

VERSION="$1"

apt-get update
apt-get install -y \ 
  build-essential \
  fort77 \ 
  xorg-dev \ 
  liblzma-dev \
  libblas-dev \ 
  gfortran \ 
  gcc-multilib \ 
  gobjc++ \ 
  aptitude libreadline-dev \ 
  libbz2-dev \ 
  libpcre2-dev \ 
  libcurl4 \ 
  libcurl4-openssl-dev \ 
  default-jre \ 
  default-jdk \ 
  openjdk-8-jdk \ 
  openjdk-8-jre \
  libssl-dev \
  zlib1g-dev \
  libsodium-dev \
  libxml2-dev
wget https://cran.rstudio.com/src/base/R-${VERSION:0:1}/R-${VERSION}.tar.gz
tar -xf R-${VERSION}.tar.gz
rm -f R-${VERSION}.tar.gz
cd R-${VERSION}
bash configure --prefix=/opt/R/${VERSION} --enable-R-shlib
make 
sudo make install
cd ..
rm -r -f R-${VERSION}
sudo ln -s /opt/R/${VERSION}/bin/R /bin/R
# Rscript -e "install.packages('lintr')"
