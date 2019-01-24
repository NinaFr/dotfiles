" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.

"filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'google/vim-jsonnet'

call vundle#end()            " required
filetype plugin indent on    " required

set wildignore+=*/Godeps/*
set wildignore+=*/local/*
let g:ctrlp_working_path_mode = ''

autocmd BufWritePre * :%s/\s\+$//e
"set nocompatible
set textwidth=77
set wrap
set noai
syntax on
"set bg=light
filetype plugin on

let g:go_fmt_command = "goimports"

set ts=2
set background=dark

set runtimepath^=~/.vim/bundle/ctrlp.vim
set number
