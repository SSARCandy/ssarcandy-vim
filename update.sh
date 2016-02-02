#!/bin/bash

for d in bundle/*/ ; 
do 
    cd "$d" 
    echo "START updating $d ..."
    git pull
    echo " "
done