"""""""""""""""""""""""""""""
"   vim config file         "
"   Created by SSARCandy    "
"""""""""""""""""""""""""""""

set shell=bash\ -i
set autoindent
filetype plugin indent on
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

syntax on
au BufNewFile, BufRead *.ejs set filetype=html
filetype plugin on

autocmd FileType c,cpp,cc,java call PROG()
autocmd FileType javascript call PROGjs()
autocmd FileType make setlocal noexpandtab

function PROGjs()
  " tabular setting
  nmap = :Tab /=<CR>:Tab /:<CR>
endfunction

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

highlight Comment    ctermfg=DarkCyan
highlight SpecialKey ctermfg=Yellow

" toggle fold-code at cursor
nnoremap zz za

" remap ZZ to save & close tab(buffer)
nmap ZZ :update<CR>:Bd<CR>

" Save file
nmap <Leader>s :update<CR>

" compile project (must have Makefile in current dir)
nmap <Leader>m :!rm -rf main<CR>:wa<CR>:make<CR>:cw<CR>

" Toggle comments (NERDcommenter) 
nmap <C-l> \c 
vmap <C-l> \c 
imap <C-l> <C-O>\c 

" Toggle NERDTree
nmap <C-m> :NERDTreeToggle<CR>

" Open on github
nnoremap <leader>o :!echo `git url`/blob/`git rev-parse --abbrev-ref HEAD`/%\#L<C-R>=line('.')<CR> \| xargs open<CR><CR>


" -------------- Pathogen (Plugin Manager)
runtime bundle/pathogen/autoload/pathogen.vim
" run pathogen
execute pathogen#infect()




" --------------- NERDTree ----------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1        " NERDTree 子窗口中不顯示冗餘幫助信息
let NERDTreeAutoDeleteBuffer = 1 " 刪除文件時自動刪除文件對應buffer
let NERDTreeQuitOnOpen = 0       " don't auto-quit nerdtree when open file




" --------------- indentLine --------------
let g:indentLine_color_term = 239      " Vim
let g:indentLine_color_gui = '#6e6e6e' " GVim
" none X terminal
let g:indentLine_color_tty_light = 7   " (default: 4)
let g:indentLine_color_dark = 1        " (default: 2)
let g:indentLine_char = '|'





" -------------- syntastic --------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let Tlist_Ctags_Cmd="/usr/local/Cellar/ctags/5.8_1/bin/ctags"
let Tlist_Auto_Update = 1
let Tlist_Use_Right_Window=1
let g:syntastic_javascript_checkers = ['eslint'] " StrTrim(system('npm-which eslint'))





" -------------- airline --------------- 
let g:airline_theme ='wombat'
let g:airline#extensions#whitespace#enabled = 0         " disable whitespace warning
let g:airline_section_x = '%{strftime("%m/%d %H:%M")}%' " show time at section x
let g:airline#extensions#tabline#enabled = 1            " enable tabline
let g:airline#extensions#tabline#left_sep = ' '         " set left separator
let g:airline#extensions#tabline#left_alt_sep = '|'     " set left separator which are not editting
let g:airline#extensions#tabline#buffer_nr_show = 0     " show buffer number
let g:airline#extensions#tabline#fnamemod = ':t'        " set airline#tabline show only filename
let g:airline_powerline_fonts = 1                       " enable powerline-fonts
set laststatus=2                                        " set status line
set guifont=Literation_Mono_Powerline:h14               " enable powerline-fonts for macVim

" air-line buffer switcher shortcut
nmap <Tab> :bn!<CR>
nmap ` :bp!<cr>
nmap <Leader>d :Bd<CR>





" -------------- neocomplete ---------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 4
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Recommended key-mappings.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif





" -------------- gitgutter ---------------
let g:gitgutter_max_signs = 1000  " default value"





" -------------- ctrlp.vim ----------------
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


" --------------- incsearch ----------------
map /  <Plug>(incsearch-forward)


" --------------- vim-go -------------------
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
let g:go_fmt_autosave = 0
