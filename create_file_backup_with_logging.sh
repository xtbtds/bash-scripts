#!/bin/bash
echo "User ${USER} was using this script @ $(date +%Y-%m-%d-%HH-%MM-%SS) to check the string ${1}" >> file_or_dir.log

if [ -z $1 ]
then
        echo "Provide an argument"
elif [ ! -a $1 ]; then
        echo "File doesn't exist"
elif [ -d $1 ]; then
        echo "${1##*/}" is a directory
elif [ -f $1 ]; then
        echo "${1##*/}" is a file. Would you like to tar it to /tmp/$1.tar? \(y/n\)
        read choice
        case $choice in
                y)
                        echo Creating backup...
                        tar -cf/tmp/${1##*/}.tar $1
                        ;;
                n)
                        echo No selected. Not creating a backup.
                        ;;
                *)
                        echo invalid option
                        exit 3
                        ;;
         esac
else
        echo 
fi
