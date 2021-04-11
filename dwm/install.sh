# dwm
git clone https://git.suckless.org/dwm/
cd dwm
make
make install
cd -
rm -f -r dwm

# dwmstatus
git clone git://git.suckless.org/dwmstatus
cd dwmstatus
make
make install
cd -
rm -f -r dwmstatus

# iwd
sudo apt install iwd
echo '[device]' >> /etc/NetworkManager/conf.d/iwd.conf
echo 'wifi.backend=iwd' >> /etc/NetworkManager/conf.d/iwd.conf
systemctl mask wpa_supplicant
# must reboot system afterwards
