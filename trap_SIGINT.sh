#!/bin/bash
catch_count=0

function catcher()
{
        let catch_count++
        echo
        if [[ $catch_count -eq 1 ]]; then
                echo "Press CTRL+C second time to exit"
        elif [[ $catch_count -eq 2 ]]; then
                echo "Press CTRL+C third time to exit"
        else 
                echo "Exited"
                exit
        fi
}

function counter()
{
        COUNT=100
        while true; do
                COUNT=$(( COUNT - 1 ))
                sleep 1
                echo "$COUNT seconds left"
        done
        
trap catcher INT

counter()
