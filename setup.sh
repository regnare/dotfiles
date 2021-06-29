#!/bin/bash

dpkg-query -W -f '${Status}' stow 2>/dev/null| grep -q "ok installed" \
  || (echo "Installing stow..."; sudo apt install stow)

for d in $(find . -maxdepth 1 -type d | sed 's/.\///; /^\..*$/d'); do
  stow -t ~ $d
done

mkdir antigen
curl -L git.io/antigen > ./antigen/antigen.zsh
