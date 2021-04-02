#!/bin/bash

apt-get update
apt-get install -y \ 
  # R dependencies
  build-essential \
  fort77 \ 
  xorg-dev \ 
  liblzma-dev \
  libblas-dev \ 
  gfortran \ 
  gcc-multilib \ 
  gobjc++ \ 
  aptitude libreadline-dev \ 
  libbz2-dev \ 
  libpcre2-dev \ 
  libcurl4 \ 
  libcurl4-openssl-dev \ 
  default-jre \ 
  default-jdk \ 
  openjdk-8-jdk \ 
  openjdk-8-jre \
  # R libraries dependencies
  libssl-dev \
  zlib1g-dev \
  libsodium-dev \
  libxml2-dev
