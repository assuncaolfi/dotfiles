#!/bin/bash

gnome-terminal -x jackd -R -d alsa -d hw:1,0 &
sleep 5
gnome-terminal -x a2jmidid -e &
sleep 5
gnome-terminal -x sclang SuperDirt.sc &
sleep 5 
gnome-terminal -x tidalvim

# tmux \
#  new-session 'jackd -R -d alsa -d hw:1,0 ; read' \; \
#  split-window -d 'a2jmidid -e ; read' \; \
#  split-window -d "sclang SuperDirt.sc ; read" \; \
#  split-window -d "tidalvim" \; \
#  select-layout even-vertical \; 
