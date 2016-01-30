# My-vim-tips

## Plugins
| plugin name       |  main feature   |  note   |
|-------------------|-----------------|---------|
|delimitMate        |provides insert mode auto-completion for quotes, parens, brackets, etc.                 |         |
|indentLine         |show indent guide line| didn't use in current setting|
|jshint2.vim        |Find and show error in `.js` file| I use syntastic mainly|
|nerdcommenter      |Useful comment plugin||
|nerdtree           |Show dir tree structure ||
|syntastic          |provide syntax checking||
|tabular            | line up `=`, `:`|mostly use in `.js`|
|taglist.vim        | provides an overview of the structure of source code files (list of function tags)||
|ultisnip           |ultimate solution for snippets||
|vim-autoformat     | Formating code||
|vim-nodejs-complete| Auto-complete for `nodejs`| need `nodejs`|
|airline            |create better-looking, more functional vim statuslines and tabline ||
|YouCompleteMe      | Auto-complete for `c/c++`||

## Shortcuts

| keys         | mode           | functions                | note                             |
|--------------|----------------|--------------------------|----------------------------------|
|`\s`          |NORMAL          |save file (update)        |                                  |
|`Tab`         |NORMAL          |goto next tab file        |                                  |
|`` ` ``       |NORMAL          |goto previous tab file    |                                  |
|`\d`          |NORMAL          |close current tab         | will warning without saving      |
|`ctrl + l`    |NORMAL/INSERT   |Toggle comments           |                                  |
|`ctrl + n`    |NORMAL          |open NERDtree             |                                  |
|`ctrl + ww`   |NORMAL          |switching windows         |                                  |
| `\m`         |NORMAL          |compile                   | must have Makefile at current dir|
| `:!./a.out`  |NORMAL          |execute                   | a.out is exe name                |
|`ctrl + t`    |NORMAL          |open Taglist              | for c/cpp only                   |
|`=`           |NORMAL          |align `=` and `:`         | for js file only                 |
|`q`           |ERROR LIST      |close jshint error list   | for js file only                 |
|`F9`          |NORMAL/INSERT   |show jshint next error    | for js file only                 |
|`F7`          |NORMAL/INSERT   |show jshint previous error| for js file only                 |
