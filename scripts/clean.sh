#!/bin/bash

sizes="256 128 64 48 32 24 22 16 8"
root_folder=$1

if [ "$root_folder" == "" ] ; then
    echo "se esparaba [root_folder]"
    exit 1
fi

echo "Eliminando archivos de $1"

for size in $sizes; do
    echo "$size"x"$size"
    rm -rf "$root_folder"/"$size"x"$size"
done
