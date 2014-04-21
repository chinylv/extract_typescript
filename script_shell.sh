#!/bin/bash

if [ $# -ne 2 ] ; then
    echo "Usage: ./script_shell.sh script-file output_file"
    exit
fi

cat $1 | \
    perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' |\
        col -b > $2
