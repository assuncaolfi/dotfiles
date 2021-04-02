#!/bin/bash

apt-get update
apt-get install -y \
  gperf \ 
  luajit \ 
  luarocks \ 
  libuv1-dev \ 
  libluajit-5.1-dev \ 
  libunibilium-dev \ 
  libmsgpack-dev \ 
  libtermkey-dev \ 
  libvterm-dev \ 
  libutf8proc-dev \ 
  libtool-bin
