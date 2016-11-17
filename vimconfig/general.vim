" ======================
" == General Settings ==
" ======================

set shell=bash\ -i
set autoindent
set nocompatible
set guifont=Monaco:h14
set binary
set noeol
set secure
set nowrap
set backspace=2         " allow backspacing over everything in insert mode
set viminfo='20,\"50    " read/write a .viminfo file, don't store more than 50 lines of registers
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set wildchar=<TAB>      " such as <TAB> in shell
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set list lcs=tab:\|\    "indent hint with hard-tab"
set mouse=a
set nu
set nofoldenable        " don't fold code on start
set foldmethod=indent   " code fold method (INDENT or SYNTAX)
set foldcolumn=1
set foldnestmax=3
set cursorline          " highlight current line ('cursorcolumn' for highlight current column
set showcmd             " show command
set showmatch
set showmode            " show current mode
set incsearch           " While typing a search pattern, show immediately where the so far typed pattern matches.
set hlsearch            " When there is a previous search pattern, highlight all its matches.
set fileencodings=utf-8,cp936,big5,latin1
set background=dark     " Theme background
colorscheme molokai     " Theme
set concealcursor=
set encoding=utf-8
set helplang=tw         " zh-tw for vim doc

" hide scrollbar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

filetype plugin indent on
filetype plugin on

syntax on
highlight Comment    ctermfg=DarkCyan
highlight SpecialKey ctermfg=Yellow

" disable doc window in python
autocmd FileType python setlocal completeopt-=preview
autocmd FileType c,cpp,cc,java call PROG()
autocmd FileType make setlocal noexpandtab

function PROG()
  set showmatch
  set nosmartindent
  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30
  set cinoptions=t0
  set formatoptions=tcqr
  let Tlist_Auto_Open=1

  " Autoformat triggered when ; } is typed.
  imap } }<ESC>:Autoformat<CR>/}<CR>:let @/ = ""<CR>i<RIGHT>

  nmap <C-t> :Tlist<CR>
endfunction



" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
  let myUndoDir = expand(vimDir . '/undodir')
  call system('mkdir ' . vimDir)     " Create dirs
  call system('mkdir ' . myUndoDir)  " Create undo dir
  let &undodir = myUndoDir
  set undofile
endif

" treat *.ejs as html
au BufNewFile, BufRead *.ejs set filetype=html

