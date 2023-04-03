#!/bin/bash

#skrypt tworzący 30 plików

data=$(date)
nazwa_skryptu=$(basename "$0")

if [ "$1" = "--logs" ]; then
  if [ "$2" -gt 0 ] 2>/dev/null; then
    for ((i=1; i<=$2; i++)); do
      touch log$i.txt
      echo $data > log$i.txt
      echo log$i.txt >> log$i.txt
      echo $nazwa_skryptu >> log$i.txt
    done
  fi
fi