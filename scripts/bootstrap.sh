#!/bin/bash

set -xe

echo "##### UPDATING SYSTEM #####"
sudo pacman -Syu

echo "##### SETTING CONFIG #####"
paru -S --needed stow
stow -v -R -t $HOME stow

echo "##### INSTALLING PACKAGES #####"
./scripts/install-packages.sh

echo "##### SETTING UP SOME CONFIGS #####"
./scripts/setup-config.sh
