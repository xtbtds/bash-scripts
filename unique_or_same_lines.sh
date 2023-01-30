#!/bin/bash

if [[ -z $1 || -z $2 ]]
then
        echo You must provide 2 files.
        exit 2
fi

echo "Enter what do you want to see:
1) unique lines from the first file
2) unique lines from the second file
3) same lines for both files"

read OPTION

case $OPTION in
        1)
                comm -23 $1 $2 --nocheck-order
                ;;
        2)
                comm -13 $1 $2 --nocheck-order
                ;;
        3)
                comm -12 $1 $2 --nocheck-order
                ;;
        *)
                exit 3
                ;;
esac
