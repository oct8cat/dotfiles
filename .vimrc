source ~/.vim/vundle.vim

" Filetype & Syntax
filetype plugin on
filetype plugin indent on
syntax on

" Behavior
set nocompatible
set backspace=indent,eol,start
set whichwrap=<,>,[,]
set incsearch
set hlsearch
set noswapfile
set nobackup

" Mouse
set mouse=a
set mousehide

" Appearance
if has('gui_running')
    set guioptions-=r
    set guioptions-=L
    set guioptions-=m
    set guioptions-=T
    set guifont=Inconsolata\ Bold\ 13
else
    let g:solarized_termcolors=256
endif
set showtabline=2
set showcmd
set showmode
set number
set ruler
set nowrap
set background=dark
colorscheme solarized

" Intendation
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

nnoremap <F5> :bprev<CR>
nnoremap <F6> :bnext<CR>
nnoremap <F7> :undo<CR>
nnoremap <F8> :redo<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFromBookmark
nmap :Q :q
nmap :W :w

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
