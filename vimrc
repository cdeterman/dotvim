version 6.0
set nocompatible
set background=dark
if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif
map! <C-Home> <C-Home>
map! <C-End> <C-End>
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
" vim: set ft=vim :
call pathogen#infect()
syntax on
filetype plugin indent on
