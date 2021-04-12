#!/bin/bash

apt-get update
apt-get install -y \
  build-essential \
  libharfbuzz-dev \
  libx11-dev \
  libxinerama-dev \
  sharutils \
  suckless-tools

