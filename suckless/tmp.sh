# st
git clone https://git.suckless.org/st
cp st-fira-code.diff st/st-fira-code.diff
cd st
make uninstall
git apply st-fira-code.diff
wget https://st.suckless.org/patches/ligatures/0.8.3/st-ligatures-20200430-0.8.3.diff
git apply st-ligatures-20200430-0.8.3.diff
make
make install
cd -
rm -r -f st
