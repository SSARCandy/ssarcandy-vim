" ===========================
" ==    vim config file    ==
" ==  Created by SSARCandy ==
" ===========================

call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'moll/vim-bbye'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'othree/es.next.syntax.vim', {'for': ['js', 'javascript']}
Plug 'haya14busa/incsearch.vim'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/taglist.vim', {'for': ['cpp', 'hpp', 'h', 'c']}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Chiel92/vim-autoformat'
Plug 'skammer/vim-css-color', {'for': ['css', 'less', 'sass']}
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go', {'for': ['go']}
Plug 'pangloss/vim-javascript', {'for': ['js', 'javascript']}
Plug 'terryma/vim-multiple-cursors'
Plug 'myhere/vim-nodejs-complete', {'for': ['js', 'javascript']}
Plug 'tpope/vim-sleuth'
Plug 'honza/vim-snippets'
Plug 'othree/yajs.vim'
Plug 'ivalkeen/nerdtree-execute'
Plug 'davidhalter/jedi-vim', {'for': ['py']}
Plug 'andviro/flake8-vim', {'for': ['py']}
Plug 'vim-tw/vimcdoc-tw'

" deoplete related plugins
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()


" == General Settings
source ~/.vim/vimconfig/general.vim

" == Key-map Settings
source ~/.vim/vimconfig/keymap.vim

" == Custom Settings of plugins
source ~/.vim/vimconfig/plugins/airline.vim
source ~/.vim/vimconfig/plugins/ctrlp.vim
source ~/.vim/vimconfig/plugins/flake8.vim
source ~/.vim/vimconfig/plugins/gitgutter.vim
source ~/.vim/vimconfig/plugins/incsearch.vim
source ~/.vim/vimconfig/plugins/indentLine.vim
source ~/.vim/vimconfig/plugins/deoplete.vim
source ~/.vim/vimconfig/plugins/nerdcommenter.vim
source ~/.vim/vimconfig/plugins/nerdtree.vim
source ~/.vim/vimconfig/plugins/syntastic.vim
source ~/.vim/vimconfig/plugins/vim-go.vim
