#!/bin/bash

data=$(date)
nazwa_skryptu=$(basename "$0")

if [ "$1" = "--logs" ]; then
    for ((i=1; i<=100; i++)); do
        cd log$i
        touch log$i/log$i.txt
        echo $data > log$i.txt
        echo log$i.txt >> log$i.txt
        echo $nazwa_skryptu >> log$i.txt
    done
fi