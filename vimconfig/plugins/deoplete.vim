" -------------- deoplete ---------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('yarp', v:true)
call deoplete#custom#var('file', {'enable_buffer_path': v:true})

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

autocmd InsertEnter * call deoplete#enable()


"call deoplete#enable()

