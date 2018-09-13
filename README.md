# Algdat Høsten 2018

Feel free to steal or add your own solutions to this repo.

Blessings,
Henry.

## Vim setup with quick execution of code
### Syntax highlighting ++
Install this plugin for syntax-highlighting (follow steps under)
https://github.com/JuliaEditorSupport/julia-vim

Copy (or symlink) the contents of the plugin repo into the vim application support directory:
``` bash
git clone git://github.com/JuliaEditorSupport/julia-vim.git
cd julia-vim
mkdir -p ~/.vim
cp -R * ~/.vim
```
Julia should appear as a file type and be automatically detected for files with the .jl extension.

### Run code on <F9> keypress
Add this to your .vimrc
```
 " Mapping <F9> to run julia program
autocmd FileType julia nnoremap <buffer> <F9> :exec '!julia' shellescape(@%, 1)<cr>
```
