#!/bin/bash

sizes="256 128 64 48 32 24 22 16 8"
root_folder=$1

if [ "$root_folder" == "" ] ; then
    echo "se esparaba [root_folder]"
    exit 1
fi

for size in $sizes; do
    #rm -rf $root_folder
    echo "$size"x"$size"
done
