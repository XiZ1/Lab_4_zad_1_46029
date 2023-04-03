#!/bin/bash

#skrypt tworzący 30 plików

data=$(date)
nazwa_skryptu=$(basename "$0")

if [ "$1" = "--logs" ]; then
    for ((i=1; i<=100; i++)); do
      touch log$i.txt
      echo $data > log$i.txt
      echo log$i.txt >> log$i.txt
      echo $nazwa_skryptu >> log$i.txt
    done
fi
