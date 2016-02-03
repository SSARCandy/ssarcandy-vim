#!/bin/bash

# update Pathogen
echo "START updating Pathogen ..."
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "DONE. "
echo " "

# git pull all submodule 
for d in bundle/*/ ; 
do 
    cd "$d" 
    echo "START updating $d ..."
    git pull
    echo "DONE. "
    echo " "
done