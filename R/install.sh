#!/bin/bash

VERSION="$1"

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
Rscript -e "install.packages('Cairo')"
cp .Rprofile $HOME/.Rprofile
