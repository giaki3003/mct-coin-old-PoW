## [-- MyCryptoTrade (MCT) --] ##

This is the support coin for MyCryptoTrade System mct.plus

## [-- How to compile --] ##

The guide works on a fresh Ubuntu 16.04 LTS system.
Follow the commands below to get a static build:
(one command per line)

cd ~
sudo apt-get install build-essential automake git
git clone https://github.com/mctplus/mct.git
cd ~/mct
./autogen.sh
cd ~/mct/depends

## [-- For static inux build continue here: --] ##
make HOST=x86_64-pc-linux-gnu -j`nproc`
cd ~/mct
./configure --enable-glibc-back-compat --prefix=`pwd`/depends/x86_64-pc-linux-gnu
make -j`nproc`
mkdir -p ~/mct/build/linux
strip src/mctd src/mct-cli src/mct-tx src/qt/mct-qt
cp -t ~/mct/build/linux src/mctd src/mct-cli src/mct-tx src/qt/mct-qt
make clean
## [-- Static linux build done. Executable files saved in ~/mct/build/linux --] ##


## [-- For Windows build continue here: --] ##
make HOST=i686-w64-mingw32 -j`nproc`
cd ~/mct
CONFIG_SITE=$PWD/depends/i686-w64-mingw32/share/config.site ./configure --prefix=/
make -j`nproc`
mkdir -p ~/mct/build/windows
strip src/mctd.exe src/mct-cli.exe src/mct-tx.exe src/qt/mct-qt.exe
cp -t ~/mct/build/windows src/mctd.exe src/mct-cli.exe src/mct-tx.exe src/qt/mct-qt.exe
make clean
## [-- Windows build done. Executable files saved in ~/mct/build/windows --] ##



Enjoy the MCT System!



