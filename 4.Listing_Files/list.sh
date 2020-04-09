#! /usr/bin/env bash

files=(*)

#> iterate over bash array
for file in "${files[@]}" ; do
    echo "$file"
done
