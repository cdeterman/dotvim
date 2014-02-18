set nocompatible
set background=dark
if has('win32') || has('win64') || has('win32unix') || has('win64unix')
    set runtimepath=$HOME/vim/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/vim/.vim/after
endif
filetype off 
filetype plugin indent on

"set shiftwidth=4
"set autoindent
set backspace=2
set fileencoding=utf8
"set helplang=en
set history=1000
"set ruler
"set shelltemp
"set viminfo='100,<50,s10,h
set number
set t_Co=256
colorscheme skittles_berry

let mapleader=","


"autocmd vimenter * if !argc() | NERDTree| endif"
map <leader>n :NERDTreeToggle<CR>
let NERDTreeDirArrows=0
let NERDTreeShowHidden=1

"Map Tasklist to ,td"
map <leader>td <Plug>TaskList

"Map to toggle Gundo window with ,g"
"map <leader>g :GundoToggle<CR>

"Tell pyflakes not to use quick fix window"
"let g:pyflakes_use_quickfix = 0

"Map to jump to each of the pep8 violations in quickfix window"
"let g:pep8_map='<leader>8'

"Activate python documentation
let g:pydoc_cmd = 'python -m pydoc'

"Map key to run python code
let g:pymode_run_bind = '<leader>y'

" settings for vim-r-plugin and screen.vim
" Usage
" 	- Read intro/help in vim with :h vim-r-plugin or :h screen.txt
" 	- to initialize vim/R session, start screen/tmux, open some *.R file
" 	in vim and then hit F2 key
" 	- Object/omni completion command CTRL-X CTRL-O
" 	- To update objec tlist for omni completion, run :RUpdateObjList
" Vim/R window arrangement
" 	tmux attach
" 	Open *.R file in VIm and hit F2 to open R
" 	Go to R pane and create another pane with C-a %
" 	Open second R session in new pane
" 	Go to vim pane and open new viewport with :split *.R
" Useful tmux commands
" 	tmux new -s <myname> 		start new session with specific name
" 	tmux ls (C-a-s) 		list tmux session
" 	tmux attach -t <id> 		attach to specific session
" 	tmux kill-session -t <id> 	kill specific session
" 	C-a-: kill-session 		kill a session
" 	C-a % 				split pane vertically
" 	C-a " 				split pane horizontally
" 	C-a-o 				jump cursor to next pane
" 	C-a C-o 			swap panes
" 	C-a-: resize-pane -L 10 	resizes pane by 10 to left (L R U D)
" Corresponding Vim commands
" 	:split or :vsplit 		split viewport
" 	C-w-w 				jump cursor to next pane
" 	C-w-r 				swap viewports
" 	C-w C-++ 			resize viewports to equal split
" 	C-w 10+ 			increase size of current pane by value
"
" To open R in termal rather than RGUI (only necessary on OS X)
" let vimrplugin_applescript = 0
" let vimrplugin_screenplugin = 0
" For tmux support
let g:ScreenImpl = 'Tmux'
let vimrplugin_screenvsplit = 1 " For vertical tmux split
let g:ScreenShellInitialFocus = 'shell'
" Instruct to use your own .screenrc file
let g:vimrplugin_noscreenrc = 1
" Don't use conque shell if installed
let vimrplugin_conqueplugin = 0
" map the letter 'r' to send visually selected lines to R
let g:vimrplugin_map_r = 1
" see R documentation in Vim buffer
let vimrplugin_vimpager = "no"
" start R with F2 key
" remapped from default \rf
map <F2> <Plug>RStart
imap <F2> <Plug>Rstart
vmap <F2> <Plug>Rstart
" send seleciton to R with space bar
" remapped from default \l
vmap <Space> <Plug>RDSendSelection
" send line to R with space bar
nmap <Space> <Plug>RDSendLine

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
"delete buffer by switching window to mbe window and pressing d when over
"buffer of choice"

"command-t plugin - help find and open files"
"needed to have ruby support and run 'make rake' in bundle/command-t folder"
"Allow fuzzy text matching to find files in project with <leader>t"
"Also search only through open bufferes with <leader>b"

"Need to read up on Ropevim"
"Maining to jump to function or class definitions quickly to rename things"
"map <leader>j :RopeGotoDefinition<CR>
"map <leader>r :RopeRename<CR>

"Ack Plugin for Searching"
"similar to grep, fuzzy text search for anything in code and will give a list of files and line numbers where they are defined.  The ! is added so it doesn't open the first result automatically.
"nmap <leader>a <Esc>:Ack!

""testing code with Pytest"
"Executing the tests"
"nmap <silent><leader>tf <Esc>:Pytest file<CR>
"nmap <silent><leader>tc <Esc>:Pytest class<CR>
"nmap <silent><leader>tm <Esc>:Pytest method<CR>
""cycle through test errors"
"nmap <silent><leader>tn <Esc>:Pytest next<CR>
"nmap <silent><leader>tp <Esc>:Pytest previous<CR>
"nmap <silent><leader>te <Esc>:Pytest error<CR>

"Pathogen Notes"
" vim: set ft=vim :
call pathogen#infect()
Helptags
syntax on
filetype plugin indent on
