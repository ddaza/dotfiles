#!/bin/bash

for i in ./* ; do
  if [ -d "$i" ]; then
    echo "###" $i "###"
    cd $(basename "$i")
    git pull
    cd ..
  fi
done
