#!/bin/sh
set -e 
#
apt-get update -qq &&  apt-get -y install \
  autoconf \
  automake \
  build-essential \
  cmake \
  git-core \
  libass-dev \
  libfreetype6-dev \
  libgnutls28-dev \
  libmp3lame-dev \
  libsdl2-dev \
  libtool \
  libva-dev \
  libvdpau-dev \
  libvorbis-dev \
  libxcb1-dev \
  libxcb-shm0-dev \
  libxcb-xfixes0-dev \
  meson \
  ninja-build \
  pkg-config \
  texinfo \
  wget \
  yasm \
  zlib1g-dev \
  libssl-dev \
  openssl \
  libx264-dev \
  libx265-dev \
  libnuma-dev \
  tclsh \
  pkg-config \
  libxml2-dev \
  r-base-dev \
  cmake 
#  
mkdir -p ~/ffmpeg_build
#
cd ~
pwd
git clone --depth 1 https://github.com/Haivision/srt.git
#
mkdir -p ~/srt/build
cd ~/srt/build
ls -l 
#cat CMakeLists.txt
#
pwd
#
cmake -DCMAKE_INSTALL_PREFIX="$HOME/ffmpeg_build" -DENABLE_C_DEPS=ON -DENABLE_SHARED=ON ..
make
make install
#
pwd
#
cd /tmp
git clone -b n5.1.2 https://github.com/FFmpeg/FFmpeg
cd FFmpeg
#
export PATH="$HOME/bin:$PATH" \
export PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig"
./configure \
  --prefix="$HOME/ffmpeg_build" \
  --pkg-config-flags="--static" \
  --extra-cflags="-I$HOME/ffmpeg_build/include" \
  --extra-ldflags="-L$HOME/ffmpeg_build/lib" \
  --extra-libs="-lpthread -lm" \
  --bindir="$HOME/bin" \
  --enable-gpl \
  --enable-openssl \
  --enable-libass \
  --enable-libfreetype \
  --enable-libmp3lame \
  --enable-libx264 \
  --enable-libx265 \
  --enable-libsrt \
  --enable-nonfree \
  --enable-version3 \
  --enable-pthreads \
  --extra-libs=-lpthread \
  --pkg-config-flags=--static \
  --enable-postproc \
  --enable-bzlib \
  --enable-zlib \
  --enable-libmp3lame \
  --enable-demuxer=dash \
  --enable-openssl \
  --enable-protocol=tls \
  --enable-protocol=rtmps \
  --enable-filter=drawtext \
  --enable-libxml2 \
  --enable-libfontconfig 
#
#--enable-libxml2 \
export PATH="$HOME/bin:$PATH" 
make && make install && rm -rf /tmp/FFmpeg && rm -rf /home/FFmpeg
#
#
echo "export CGO_LDFLAGS=\"-L$HOME/ffmpeg_build/lib/\"" >> ~/.profile 
echo "export CGO_CFLAGS=\"-L$HOME/ffmpeg_build/include/\"" >> ~/.profile 
echo "export PKG_CONFIG_PATH=\"-L$HOME/ffmpeg_build/lib/pkgconfig\"" >> ~/.profile 
source ~/.profile 
#