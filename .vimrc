source ~/.vim/vundle.vim

filetype plugin on
filetype plugin indent on
syntax on

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_go_checkers =['go']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline_powerline_fonts = 1
let g:jsx_ext_required = 0

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
set formatoptions+=j

"appearance
if has('gui_running')
    set guioptions-=r
    set guioptions-=L
    set guioptions-=T
    set guioptions-=m
    set guifont=Meslo\ LG\ S\ for\ Powerline:h18
endif
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

"autocmd
autocmd FileType javascript setl omnifunc=javascriptcomplete#CompleteJS
autocmd BufRead,BufNewFile *.hbs setl filetype=html
