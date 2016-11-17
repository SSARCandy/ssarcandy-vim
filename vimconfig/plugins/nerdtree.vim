" --------------- NERDTree ----------------
" Toggle NERDTree
nmap <C-m> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1        " NERDTree 子窗口中不顯示冗餘幫助信息
let NERDTreeAutoDeleteBuffer = 1 " 刪除文件時自動刪除文件對應buffer
let NERDTreeQuitOnOpen = 0       " don't auto-quit nerdtree when open file
