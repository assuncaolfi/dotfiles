#!/bin/bash

# dwm
git clone https://git.suckless.org/dwm/
cd dwm
make
make install
cd -
rm -f -r dwm
echo "exec -dwm" >> ~/.xsession
sudo apt-get install dwm
sudo cp /usr/share/xsessions/dwm.desktop{,.bak}
sudo apt-get purge dwm
sudo mv /usr/share/xsessions/dwm.desktop{.bak,}

# dwmstatus
git clone git://git.suckless.org/dwmstatus
cd dwmstatus
make
make install
cd -
rm -f -r dwmstatus
echo 'dwmstatus 2>&1 >/dev/null &' >> /etc/X11/xinit/xinitrc

# st
git clone https://git.suckless.org/st
cp st-hasklig.diff st/st-hasklig.diff
cd st
git apply st-hasklig.diff
wget https://st.suckless.org/patches/ligatures/0.8.3/st-ligatures-20200430-0.8.3.diff
git apply st-ligatures-20200430-0.8.3.diff
make
make install
cd -

# iwd
sudo apt install iwd
echo '[device]' >> /etc/NetworkManager/conf.d/iwd.conf
echo 'wifi.backend=iwd' >> /etc/NetworkManager/conf.d/iwd.conf
systemctl mask wpa_supplicant
# must reboot system afterwards
