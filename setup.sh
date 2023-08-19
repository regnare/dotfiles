#!/bin/bash

packages_to_install="stow fzf curl tmux neofetch zsh"

function check_package {
  pkg=$1
  echo "Checking $pkg..."
  dpkg-query -W -f '${Status}' "$pkg" 2>/dev/null| grep -q 'ok installed' \
    || (echo "Installing $pkg..."; sudo apt -y install "$pkg")
}

sudo apt update

for p in $packages_to_install; do
  check_package "$p"
done

for d in $(find . -maxdepth 1 -type d | sed 's/.\///; /^\..*$/d'); do
  stow -t ~ $d
done

mkdir antigen
curl -L git.io/antigen > ./antigen/antigen.zsh
