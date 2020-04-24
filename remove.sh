#!/bin/bash

for d in $(find . -maxdepth 1 -type d | sed 's/.\///' | grep -v -E "^\."); do
  stow -D -t ~ $d
done
