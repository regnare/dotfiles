#!/bin/bash

for d in $(find . -maxdepth 1 -type d | sed 's/.\///; /^\..*$/d'); do
  stow -t ~ $d
done

git submodule init
git submodule update
