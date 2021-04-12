#!/bin/bash

st -e 'tidalvim' &
tmux new-session \; \
  send-keys 'sclang SuperDirt.sc' C-m \; \
  split-window -v \; \
  send-keys 'jackd -R -d alsa -d hw:0,0' C-m \; \
  split-window -h \; \
  send-keys 'sleep 1; a2jmidid -e' C-m \; 
#   new-window \; \
#   send-keys 'tidalvim' C-m \;

