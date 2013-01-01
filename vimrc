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

let mapleader=","


"autocmd vimenter * if !argc() | NERDTree| endif"
map <leader>n :NERDTreeToggle<CR>
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1

"Map Tasklist to ,td"
map <leader>td <Plug>TaskList

"Map to toggle Gundo window with ,g"
map <leader>g :GundoToggle<CR>

"Tell pyflakes not to use quick fix window"
let g:pyflakes_use_quickfix = 0

"Map to jump to each of the pep8 violations in quickfix window"
let g:pep8_map='<leader>8'

"tab completion and documentation"

"Supertab checks context of code, ename omni code completion and context
"sensitivity"
au FileType python set omnifunc=pythoncomplete#Complete
let g:SupertabDefaultCompletionType = "context"

"Enable menu and pydoc preview to see code completion information"
set completeopt=menuone,longest,preview

"Buffers information"
"minibufexpl plugin allows to see every buffer opened"
"get list of bufferes with :buffers"
"Switch befferes with b<number> or by name :b test.py (tab completion can be
"used)"

"command-t plugin - help find and open files"
"needed to have ruby support and run 'make rake' in bundle/command-t folder"
"Allow fuzzy text matching to find files in project with <leader>t"
"Also search only through open bufferes with <leader>b"

"Need to read up on Ropevim"
"Maining to jump to function or class definitions quickly to rename things"
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

"Ack Plugin for Searching"
"similar to grep, fuzzy text search for anything in code and will give a list of files and line numbers where they are defined.  The ! is added so it doesn't open the first result automatically.
nmap <leader>a <Esc>:Ack!

"testing code with Pytest"
"Executing the tests"
nmap <silent><leader>tf <Esc>:Pytest file<CR>
nmap <silent><leader>tc <Esc>:Pytest class<CR>
nmap <silent><leader>tm <Esc>:Pytest method<CR>
"cycle through test errors"
nmap <silent><leader>tn <Esc>:Pytest next<CR>
nmap <silent><leader>tp <Esc>:Pytest previous<CR>
nmap <silent><leader>te <Esc>:Pytest error<CR>
"Pathogen Notes"
" vim: set ft=vim :
call pathogen#infect()
Helptags
syntax on
filetype plugin indent on
