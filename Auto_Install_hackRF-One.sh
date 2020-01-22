#!/bin/bash

sudo apt install git cmake g++ libboost-all-dev libgmp-dev swig python3-numpy python3-mako python3-sphinx python3-lxml doxygen libfftw3-dev libcomedi-dev libsdl1.2-dev libgsl-dev libqwt-qt5-dev libqt5opengl5-dev python3-pyqt5 liblog4cpp5-dev libzmq3-dev python3-yaml

git clone --recursive https://github.com/gnuradio/gnuradio.git
cd gnuradio
mkdir build
cd build
cmake ../
make
sudo make install


git clone https://github.com/mossmann/hackrf.git
cd hackrf/host
mkdir build && cd build
cmake ../ -DINSTALL_UDEV_RULES=ON
make
sudo make install
sudo ldconfig

sudo apt-get install automake autoconf libhackrf-dev
git clone https://github.com/scateu/kalibrate-hackrf
cd kalibrate-hackrf/
./bootstrap
./configure
make
sudo make install

apt-get install gr-osmosdr
apt install hackrf

cd
python3 -m pip install cython
sudo pip3 install urh
apt-get install gr-gsm


