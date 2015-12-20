#!/bin/sh
# Add any extra stuff you might need here.

# GraphicsMagick
cd ~/src
wget http://sourceforge.net/projects/graphicsmagick/files/graphicsmagick/1.3.22/GraphicsMagick-1.3.22.tar.gz/download
tar xvfz download
cd GraphicsMagick-1.3.22
./configure --without-perl --enable-shared 
sudo make install
sudo ldconfig

# Change here to switch php versions
newphp 7 debug zts

# Gmagick
git clone https://github.com/vitoc/gmagick.git
cd gmagick
make distclean; phpize && ./configure && make

# Run baseline tests
# make test

# Install Gmagick for other tests
sudo make install
