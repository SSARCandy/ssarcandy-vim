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


