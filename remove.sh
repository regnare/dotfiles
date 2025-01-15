#!/bin/bash

for d in $(find . -maxdepth 1 -type d | sed 's/.\///; /^\..*$/d'); do
  stow -D -t ~ $d
done

rm -vrf ~/.antigen
