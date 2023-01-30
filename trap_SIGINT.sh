#!/bin/bash
int_count=0

function no_int()
{
        let int_count++
        echo
        if [[ $int_count -eq 1 ]]; then
                echo "Press CTRL+C second time to exit"
        elif [[ $int_count -eq 2 ]]; then
                echo "Press CTRL+C third time to exit"
        else 
                echo "Exited"
                exit
        fi
}

function count()
{
        COUNT=100
        while true; do
                COUNT=$(( COUNT - 1 ))
                sleep 1
                echo "$COUNT seconds left"
        done
trap no_int INT

count()
