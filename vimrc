set nocompatible
set background=dark
if has('win32') || has('win64')
        set runtimepath=$HOME/vim/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/vim/.vim/after
endif
set shiftwidth=4
set autoindent
set backspace=2
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set ruler
set shelltemp
set viminfo='100,<50,s10,h
set number
set t_Co=256
colorscheme skittles_berry
autocmd vimenter * if !argc() | NERDTree| endif
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
" vim: set ft=vim :
call pathogen#infect()
Helptags
syntax on
filetype plugin indent on
