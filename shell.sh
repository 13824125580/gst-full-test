#!/bin/bash

INSTALLDIR=`pwd`/outdir 
PKCONFIGDIR=`pwd`/outdir/lib/pkgconfig

#mkdir build
#mkdir outdir

#wget -c https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.14.1.tar.xz
#wget -c https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.14.1.tar.xz
#wget -c https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.14.1.tar.xz
#wget -c https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.14.1.tar.xz
#wget -c https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.14.1.tar.xz
#wget -c https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.14.1.tar.xz
#wget -c http://ftp.gnome.org/pub/gnome/sources/glib/2.48/glib-2.48.2.tar.xz

#echo love | sudo -S apt-get install build-essential dpkg-dev flex bison autotools-dev automake \
	#liborc-dev autopoint libtool gtk-doc-tools libgstreamer1.0-dev

#tar xvf gstreamer-1.14.1.tar.xz -C ./build
#tar xvf gst-plugins-base-1.14.1.tar.xz -C ./build
#tar xvf gst-plugins-good-1.14.1.tar.xz -C ./build 
#tar xvf gst-plugins-bad-1.14.1.tar.xz  -C ./build
#tar xvf gst-plugins-ugly-1.14.1.tar.xz -C ./build
#tar xvf gst-libav-1.14.1.tar.xz -C ./build
tar xvf glib-2.48.2.tar.xz -C ./build

#pushd ./build/gstreamer-1.14.1
#./configure --prefix=${INSTALLDIR}
#make && make install
#popd

export PKG_CONFIG_PATH=${PKCONFIGDIR}

#echo love | sudo -S apt-get install libxv-dev libasound2-dev libtheora-dev libogg-dev libvorbis-dev

#pushd ./build/gst-plugins-base-1.14.1
#./configure --prefix=${INSTALLDIR}
#make && make install
#popd

#echo love | sudo -S apt-get install libbz2-dev libv4l-dev libvpx-dev libjack-jackd2-dev libsoup2.4-dev libpulse-dev

#pushd ./build/gst-plugins-good-1.14.1
#./configure --prefix=${INSTALLDIR}
#make && make install
#popd

#echo love | sudo -S apt-get install faad libfaad-dev libfaac-dev

#pushd ./build/gst-plugins-bad-1.14.1
#./configure --prefix=${INSTALLDIR}
#make && make install
#popd

#echo love | sudo -S apt-get install libx264-dev libmad0-dev

#pushd ./build/gst-plugins-ugly-1.14.1
#./configure --prefix=${INSTALLDIR}
#make && make install
#popd

#pushd ./build/gst-libav-1.14.1
#./configure --prefix=${INSTALLDIR}
#make && make install
#popd

pushd ./build/glib-2.48.2
./configure --prefix=${INSTALLDIR}
make && make install
popd

export LD_LIBRARY_PATH=`pwd`/outdir/lib:`pwd`/plugin/mygstfilter/gst-plugin/src/.libs
