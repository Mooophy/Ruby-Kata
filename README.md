# Ruby-Kata
## Handy tools
 * [vim-pathogen](https://github.com/tpope/vim-pathogen)
 * [Navigating your bundled gems in Vim](http://effectif.com/vim/using-ctags-with-bundler-gems)
--------------------
##.Vimrc
```vim
set tags+=gems.tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

execute pathogen#infect()

```
