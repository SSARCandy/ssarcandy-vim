" -------------- deoplete ---------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!

let g:deoplete#enable_yarp = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path=1

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

autocmd InsertEnter * call deoplete#enable()


"call deoplete#enable()

