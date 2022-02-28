#!/usr/bin/env bash

for i in ~/.vim/bundle/* ; do
  if [ -d "$i" ]; then
    echo $'\e[1;32m'"## ${i##*/} ##"$'\e[0m'
    cd $(basename "$i")
    git pull
    cd ..
  fi
done
