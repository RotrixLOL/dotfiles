#!/bin/bash/env bash

set -xe

paru -Sy --needed \
  awesome-git kitty fzf cowsay-git bottom nodejs npm \
  ripgrep tree xclip ttf-fira-code ttf-dejavu-emojiless \
  noto-fonts-emoji ttf-font-awesome ttf-hack asciinema \
  ttf-iosevka-nerd neovim dunst notify-send picom-git \
  rofi acpi acpid acpi_call upower xdotool xclip ffmpeg \
  brightnessctl feh maim mpv mpd ncmpcpp playerctl discord \
  cava bat ranger gpick librewolf-bin

echo "##### INSTALLING RUST #####"
curl https://sh.rustup.rs | sh
source ~/.cargo/env
