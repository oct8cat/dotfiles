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
Plugin 'garbas/vim-snipmate'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'janko-m/vim-test'
Plugin 'mxw/vim-jsx'
Plugin 'chriskempson/base16-vim'
Plugin 'jparise/vim-graphql'
Plugin 'w0rp/ale'
Plugin 'morhetz/gruvbox'
Plugin 'skywind3000/asyncrun.vim'

call vundle#end()

filetype plugin on
filetype plugin indent on
syntax on

let g:airline_powerline_fonts = 1
let g:jsx_ext_required = 0
let g:NERDSpaceDelims = 1
let g:user_emmet_settings = {'javascript.jsx': {'extends': 'jsx', 'quote_char': "'"}}
let g:NERDTreeIgnore = ['node_modules$', '__generated__$']
let g:ctrlp_custom_ignore = join(g:NERDTreeIgnore, '\|')
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['prettier'], 'json': ['prettier']}
let g:ale_javascript_prettier_options = '--no-semi --single-quote --arrow-parens=always'
let g:ale_fix_on_save = 1
let g:gruvbox_contrast_dark = 'hard'
let g:test#strategy = 'asyncrun'
let g:test#javascript#mocha#options = '-t 10000'

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
set visualbell t_vb=
" set termguicolors

"appearance
set showtabline=1
set showcmd
set showmode
set number
set ruler
set nowrap
set colorcolumn=80,100
if has('gui_running')
  set guioptions=aegitm
  if has('gui_macvim')
    set guifont=Fira\ Mono\ for\ Powerline:h14
  else
    set guifont=Fira\ Mono\ for\ Powerline\ Medium\ 14
  endif
endif
set background=dark
try
    colorscheme gruvbox
catch 
endtry

"intendation
set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"keys
map <F2> :NERDTreeToggle<CR>
nmap <F3> :cprev<CR>
nmap <F4> :cnext<CR>
nmap <F5> :bprev<CR>
nmap <F6> :bnext<CR>
nmap <Leader>/ :nohlsearch<CR>
nmap <Leader>w :w<CR>
nmap ,t :TestNearest<CR>
nmap ,y :TestFile<CR>
nmap ,f :ALEFix<CR>
nmap ,g :lgrep -Ri --exclude-dir node_modules --exclude-dir www 
