" Filetype & Syntax
syntax on
filetype on
filetype plugin on

" Behavior
set nocompatible
set backspace=indent,eol,start
set whichwrap=<,>,[,]
set incsearch
set hlsearch
set foldmethod=indent
set noswapfile
set nobackup

" Mouse
set mouse=a
set mousehide

" Appearance
colorscheme zenburn
set showtabline=2
set noshowcmd
set showmode
set number
set ruler
set nowrap

" Tabs & Indents
set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

nnoremap <F5> :bprev<CR>
nnoremap <F6> :bnext<CR>
nnoremap <F7> :undo<CR>
nnoremap <F8> :redo<CR>

" NERD Tree
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFromBookmark
