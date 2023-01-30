#!/bin/bash

if [ -z $1 ]; then
        echo "Provide an argument"
        exit 9
fi

REGEX='^[0-9]+$'
if [[ $1 =~ $REGEX ]]; then
        echo "Provide a string, not a number"
        exit 8
fi

if [ ${#1} -gt 7 ]; then
        echo "String $1 is longer than 7 chars"
        exit 3
elif [ ${#1} -eq 7 ]; then
        echo "String length equals to 7 chars"
        exit 4
fi
echo "String $1 is shorter than 7 chars"
