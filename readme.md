# ssarcandy-vim

My vim settings and plugins, compatible with [MacVim](http://macvim-dev.github.io/macvim/) in OSX. Requires vim 8.1+

## Install

I use [vim-plug](https://github.com/junegunn/vim-plug) for plugin managment.  
Installation is simple, just do following command in terminal:

```bash
# Make sure that .vim/ isn't exist in your home dir
$ git clone https://github.com/SSARCandy/ssarcandy-vim.git ~/.vim

# Make soft link .vim/vimrc to ~/.vimrc
$ ln -s .vim/vimrc ~/.vimrc

# Install plugins
$ vim -S ~/.vim/plug-snapshot
```

## Screenshots
![](https://raw.githubusercontent.com/SSARCandy/ssarcandy-vim/master/screenshot/screenshot-1.jpg)

## Common problems

 - Q: airline glyphs cannot show normally.
 - A: see instruction of [airline fonts](https://github.com/vim-airline/vim-airline#integrating-with-powerline-fonts)
 - Q: neocomplete says need Lua supports
 - A: see [neocomplete README](https://github.com/Shougo/neocomplete.vim#requirements)
 - Q: ack.vim didn't work.
 - A: ack.vim required [ack](http://beyondgrep.com/install/) installed.
 - Q: vim-go not working
 - A: see vim-go [readme](https://github.com/fatih/vim-go#install)

## Plugin list

- [mileszs/ack.vim](https://github.com/mileszs/ack.vim)
- [moll/vim-bbye](https://github.com/moll/vim-bbye)
- [ctrlpvim/ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
- [Raimondi/delimitMate](https://github.com/Raimondi/delimitMate)
- [othree/es.next.syntax.vim](https://github.com/othree/es.next.syntax.vim)
- [haya14busa/incsearch.vim](https://github.com/haya14busa/incsearch.vim)
- [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)
- [Shougo/neocomplete.vim](https://github.com/Shougo/neocomplete.vim)
- [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
- [scrooloose/syntastic](https://github.com/scrooloose/syntastic)
- [godlygeek/tabular](https://github.com/godlygeek/tabular)
- [vim-scripts/taglist.vim](https://github.com/vim-scripts/taglist.vim)
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [Chiel92/vim-autoformat](https://github.com/Chiel92/vim-autoformat)
- [skammer/vim-css-color](https://github.com/skammer/vim-css-color)
- [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [fatih/vim-go](https://github.com/fatih/vim-go)
- [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
- [mxw/vim-jsx](https://github.com/mxw/vim-jsx)
- [terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
- [myhere/vim-nodejs-complete](https://github.com/myhere/vim-nodejs-complete)
- [tpope/vim-sleuth](https://github.com/tpope/vim-sleuth)
- [honza/vim-snippets](https://github.com/honza/vim-snippets)
- [othree/yajs.vim](https://github.com/othree/yajs.vim)
- [chrisbra/csv.vim](https://github.com/chrisbra/csv.vim)
- [ivalkeen/nerdtree-execute](https://github.com/ivalkeen/nerdtree-execute)
- [davidhalter/jedi-vim](https://github.com/davidhalter/jedi-vim)
- [andviro/flake8-vim](https://github.com/andviro/flake8-vim)
- [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)
- [vim-tw/vimcdoc-tw](https://github.com/vim-tw/vimcdoc-tw)

## Shortcuts

| keys         | mode           | functions                | note                             |
|--------------|----------------|--------------------------|----------------------------------|
|`\s`          |NORMAL          |save file (update)        |                                  |
|`Tab`         |NORMAL          |goto next tab file        |                                  |
|`` ` ``       |NORMAL          |goto previous tab file    |                                  |
|`\d`          |NORMAL          |close current tab         | will warning without saving      |
|`\x`          |NORMAL          |close current window      |                                  |
|`ctrl + l`    |NORMAL/INSERT   |Toggle comments           |                                  |
|`ctrl + m`    |NORMAL          |open NERDtree             |                                  |
|`ctrl + ww`   |NORMAL          |switching windows         |                                  |
| `\m`         |NORMAL          |compile                   | must have Makefile at current dir|
| `:!./a.out`  |NORMAL          |execute                   | a.out is exe name                |
|`ctrl + t`    |NORMAL          |open Taglist              | for c/cpp only                   |
|`ctrl + p`    |NORMAL          |search file in working dir|                                  |
|`=`           |NORMAL          |align `=` and `:`         | for js file only                 |
|`q`           |ERROR LIST      |close jshint error list   | for js file only                 |
|`F9`          |NORMAL/INSERT   |show jshint next error    | for js file only                 |
|`F7`          |NORMAL/INSERT   |show jshint previous error| for js file only                 |

