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

