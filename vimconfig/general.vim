" ======================
" == General Settings ==
" ======================

" --- General setting ---
set shell=bash\ -i
set nocompatible
set secure
set fileencodings=utf-8,cp936,big5,latin1
set encoding=utf-8
set helplang=tw         " zh-tw for vim doc
set viminfo='20,\"50    " Read/write a .viminfo file, don't store more than 50 lines of registers
set history=50          " Keep 50 lines of command line history


" --- Theme/apperance ---
colorscheme molokai     " Theme
set background=dark     " Theme background
set cursorline          " Highlight current line ('cursorcolumn' for highlight current column
set showmode            " Show current mode
set incsearch           " While typing a search pattern, show immediately where the so far typed pattern matches.
set hlsearch            " When there is a previous search pattern, highlight all its matches.
set ruler               " Show the cursor position all the time
set list lcs=tab:\|\    " Indent hint with hard-tab"
set showcmd             " Show command
set nowrap              " No word-warp
set nu
set concealcursor=nc
set guifont=Monaco:h14
set showmatch
syntax on
highlight Comment    ctermfg=DarkCyan
highlight SpecialKey ctermfg=Yellow


" --- Hide scrollbar ---
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


" --- Editing setting ---
set autoindent
set noeol
set backspace=2         " Allow backspacing over everything in insert mode
set wildchar=<TAB>      " Such as <TAB> in shell
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a


" --- Code fold setting ---
set nofoldenable        " Don't fold code on start
set foldmethod=indent   " Code fold method (INDENT or SYNTAX)
set foldcolumn=1
set foldnestmax=3


filetype plugin indent on

autocmd FileType python setlocal completeopt-=preview " Disable doc window in python
autocmd FileType c,cpp,cc,java call C_family()
autocmd FileType make setlocal noexpandtab

au BufNewFile, BufRead *.ejs set filetype=html " treat *.ejs as html

function C_family()
  set nosmartindent
  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30
  set cinoptions=t0
  set formatoptions=tcqr
  let Tlist_Auto_Open=1

  " Autoformat triggered when ; } is typed.
  imap } }<ESC>:Autoformat<CR>/}<CR>:let @/ = ""<CR>i<RIGHT>

  nmap <C-t> :Tlist<CR>
endfunction



" --- Presistent_undo ---
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

