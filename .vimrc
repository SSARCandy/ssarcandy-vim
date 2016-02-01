"  VimRC of ShepJeng (t9054@cs.nccu.edu.tw)
"  Modify by SSARCandy (s10103@cs.nccu.edu.tw)

set shell=bash\ -i
set autoindent
filetype plugin indent on
set nocompatible
set guifont=Monaco:h14
set binary
set noeol
set secure
set nowrap              " 禁止折行
set backspace=2         " allow backspacing over everything in insert mode
set viminfo='20,\"50    " read/write a .viminfo file, don't store more than 50 lines of registers
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
"set expandtab           " expand tabs to spaces.
set wildchar=<TAB>      " such as <TAB> in shell
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

set list lcs=tab:\|\    "indent hint with hard-tab"
set mouse=a
set nu
set nofoldenable        " don't fold code on start
set foldmethod=indent   " code fold method depend on INDENT
"set foldmethod=syntax   " code fold method depend on SYNTAX
set foldcolumn=1
set foldnestmax=3
set cursorline          " highlight current line
"set cursorcolumn        " highlight current column
set showcmd             " show command
set showmatch
set showmode            " show current mode
set incsearch           " While typing a search pattern, show immediately where the so far typed pattern matches.
set hlsearch            " When there is a previous search pattern, highlight all its matches.
set fileencodings=utf-8,cp936,big5,latin1
set background=dark     " Theme background
colorscheme molokai     " Theme
set concealcursor=

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

syntax on               " show parts of the text in another font or color
au BufNewFile, BufRead *.ejs set filetype=html
filetype plugin on

autocmd FileType c,cpp,cc,java call PROG()
autocmd FileType javascript call PROGjs()
autocmd FileType make setlocal noexpandtab

function PROGjs()
    nmap = :Tab /=<CR>:Tab /:<CR>
	
	"JSHint show next error
	imap <silent><F9> <C-O>:lnext<CR>
	nmap <silent><F9> :lnext<CR>

	"JSHint show previous error
	imap <silent><F7> <C-O>:lprevious<CR>
	nmap <silent><F7> :lprevious<CR>
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
    "imap ; ;<ESC>:Autoformat<CR>/;<CR>:let @/ = ""<CR>i<RIGHT>

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




" -------------- Pathogen (Plugin Manager)
runtime bundle/pathogen/autoload/pathogen.vim " 將pathogen 自身也置於獨立目錄中，需指定其路徑 
" 運行pathogen
execute pathogen#infect()                     


" -------------- YouCompleteMe -----------
" YCM 補全菜單配色
" 菜單
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5   
"" 選中項
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900 
"let g:ycm_complete_in_comments=1                                   " 補全功能在註釋中同樣有效
"let g:ycm_confirm_extra_conf=0                                     " 允許vim 加載.ycm_extra_conf.py 文件，不再提示
"let g:ycm_collect_identifiers_from_tags_files=1                    " 開啟YCM 標籤補全引擎
"" YCM 集成OmniCppComplete 補全引擎，設置其快捷鍵
"set tags+=/data/misc/software/misc./vim/stdcpp.tags                " 引入C++ 標準庫tags
"inoremap <leader>; <Cx><Co>                                       
"set completeopt-=preview                                           " 補全內容不以分割子窗口形式出現，只顯示補全列表
"let g:ycm_min_num_of_chars_for_completion=1                        " 從第一個鍵入字符就開始羅列匹配項
"let g:ycm_cache_omnifunc=0                                         " 禁止緩存匹配項，每次都重新生成匹配項
"let g:ycm_seed_identifiers_with_syntax=1                           " 語法關鍵字補全         
"let g:ycm_collect_identifiers_from_tags_files=1                    " 開啟YCM 標籤引擎
"set tags+=/data/misc/software/misc./vim/stdcpp.tags                " 引入C++ 標準庫tags
"inoremap <leader>; <Cx><Co>


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



""vim-node
"" 添加字典文件 
"au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict "$VIM. \vim\dict\node.dict
"
"let g:nodejs_complete_config = {
"\  'js_compl_fn': 'jscomplete#CompleteJS',
"\  'max_node_compl_len': 15
"\}


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

" use local eslint in node_modules
"function! StrTrim(txt)
  "return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
"endfunction
"let g:syntastic_javascript_eslint_exec = StrTrim(system('npm-which eslint'))

" -------------- jshint ----------------
"let jshint2_max_height = 5
"let jshint2_save = 1
"let jshint2_command = '/usr/local/bin/jshint'  " '/usr/local/lib/node_modules/jshint/bin/jshint' 



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

" air-line buffer 切換快捷鍵
nmap <Tab> :bn!<CR>
nmap ` :bp!<cr>
nmap <Leader>d :Bd<CR>
"nnoremap <ESC> :bd<CR>



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

" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
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

" vim gitgutter
let g:gitgutter_max_signs = 1000  " default value"

