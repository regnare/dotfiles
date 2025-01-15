#!/bin/bash

REQUIRED_PACAKGES=(
  "stow"
  "fzf"
  "tmux"
  "neofetch"
  "zsh"
  "vim"
  "curl"
)
TO_INSTALL=()

for p in "${REQUIRED_PACAKGES[@]}"; do
  echo -n "Checking for package $p... "
  if ! dpkg -s "$p" &>/dev/null
  then
    echo "not found"
    TO_INSTALL+=("$p")
  else
    echo "OK"
  fi
done

if [[ ${#TO_INSTALL[@]} -ne 0 ]]; then
  echo "Attempting to install the following: " "${TO_INSTALL[@]}"
  sudo apt install -y "${TO_INSTALL[@]}"
fi

for d in $(find . -maxdepth 1 -type d | sed 's/.\///; /^\..*$/d'); do
  stow -t ~ "$d"
done

mkdir ~/.antigen
curl -L git.io/antigen > ~/.antigen/antigen.zsh
