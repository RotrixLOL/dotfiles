#!/usr/bin/env bash

set -xe

echo "##### UPDATING SYSTEM #####"
sudo pacman -Syu

echo "##### SETTING CONFIG #####"
paru -S --needed stow
stow -v -R -t $HOME stow

echo "##### INSTALLING PACKAGES #####"
./install-packages.sh

echo "##### SETTING UP SOME CONFIGS #####"
./setup-config.sh
