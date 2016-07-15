#!/bin/bash

# copy vimrc to home dir/
cp .vimrc ~

# create and navigate to bundle/ 
mkdir bundle
cd bundle

# clone plugins
git clone https://github.com/moll/vim-bbye.git 
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/Raimondi/delimitMate.git 
git clone https://github.com/othree/es.next.syntax.vim.git 
git clone https://github.com/Yggdroot/indentLine.git 
git clone https://github.com/Shougo/neocomplete.vim.git 
git clone https://github.com/scrooloose/nerdcommenter.git 
git clone https://github.com/scrooloose/nerdtree.git 
git clone https://github.com/scrooloose/syntastic.git 
git clone https://github.com/godlygeek/tabular.git 
git clone https://github.com/vim-scripts/taglist.vim.git 
git clone https://github.com/vim-airline/vim-airline.git 
git clone https://github.com/vim-airline/vim-airline-themes.git 
git clone https://github.com/Chiel92/vim-autoformat.git 
git clone https://github.com/airblade/vim-gitgutter.git 
git clone https://github.com/mxw/vim-jsx.git 
git clone https://github.com/terryma/vim-multiple-cursors.git 
git clone https://github.com/myhere/vim-nodejs-complete.git 
git clone https://github.com/tpope/vim-sleuth.git
git clone https://github.com/honza/vim-snippets.git 
git clone https://github.com/othree/yajs.vim.git 
git clone https://github.com/mileszs/ack.vim.git
git clone https://github.com/haya14busa/incsearch.vim.git
git clone https://github.com/fatih/vim-go.git 
git clone https://github.com/ap/vim-css-color
