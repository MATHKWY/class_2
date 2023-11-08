#!/bin/bash

folder_name="$1"

if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
fi
cd "$folder_name"
for i in {0..4}; do
    touch "file$i.txt"
done

for file in *.txt; do
    folder="${file%.*}"
    mkdir "$folder"
    ln -s "../$file" "$folder/$file"
done