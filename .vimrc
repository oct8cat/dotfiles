set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-dispatch'
Plugin 'Raimondi/delimitMate'
Plugin 'digitaltoad/vim-jade'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'mattn/emmet-vim'
Plugin 'diepm/vim-rest-console'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'janko-m/vim-test'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'

call vundle#end()

filetype plugin on
filetype plugin indent on
syntax on

let g:airline_powerline_fonts = 1
let g:jsx_ext_required = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']

"behavior
set nocompatible
set backspace=indent,eol,start
set whichwrap=<,>,[,]
set incsearch
set hlsearch
set noswapfile
set nobackup
set nowritebackup
set mouse=a
set mousehide
set foldmethod=indent
set eol
set exrc

"appearance
set showtabline=1
set showcmd
set showmode
set number
set ruler
set nowrap
set background=dark
set colorcolumn=80,100
try
    colorscheme base16-solarized-dark
catch 
endtry

"intendation
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"keys
map <F2> :NERDTreeToggle<CR>
nmap <F3> :lprev<CR>
nmap <F4> :lnext<CR>
nmap <F5> :bprev<CR>
nmap <F6> :bnext<CR>
nmap <Leader>/ :nohlsearch<CR>
nmap <Leader>w :w<CR>
nmap ,t :TestNearest<CR>
nmap ,y :TestFile<CR>
