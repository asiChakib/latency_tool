#!/bin/bash

n=$1; f=$2; name=$3
if [ "$f" = "s" ]; then
    g++ -std=c++17 -O"$n" -Wall -Wextra -pedantic -S "src/${name}.cpp" -o "assembly/${name}.s"
else 
    g++ -std=c++17 -O"$n" -Wall -Wextra -pedantic "src/${name}.cpp" -o "bin/${name}"
fi