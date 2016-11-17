" ======================
" == Key-map Settings ==
" ======================

" toggle fold-code at cursor
nnoremap zz za

" remap ZZ to save & close tab(buffer)
nmap ZZ :update<CR>:Bd<CR>

" remap \x to close split window
nmap <leader>x :q<CR>

" Save file
nmap <Leader>s :update<CR>

" compile project (must have Makefile in current dir)
nmap <Leader>m :!rm -rf main<CR>:wa<CR>:make<CR>:cw<CR>



" Open on github
nnoremap <leader>o :!echo `git url`/blob/`git rev-parse --abbrev-ref HEAD`/%\#L<C-R>=line('.')<CR> \| xargs open<CR><CR>

