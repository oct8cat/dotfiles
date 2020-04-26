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
Plugin 'tpope/vim-rhubarb'
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
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'
Plugin 'tpope/vim-unimpaired'
Plugin 'posva/vim-vue'

call vundle#end()

filetype plugin on
filetype plugin indent on
syntax on

let g:airline_powerline_fonts = 1
let g:jsx_ext_required = 0
let g:NERDSpaceDelims = 1
let g:user_emmet_settings = {'javascript.jsx': {'extends': 'jsx', 'quote_char': "'"}}
let g:NERDTreeIgnore = ['node_modules$', '__generated__$', 'dist', 'build']
let g:ctrlp_custom_ignore = join(g:NERDTreeIgnore, '\|')
let g:ctrlp_root_markers = ['node_modules']
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 0
let g:ale_fixers = {'css': ['prettier'], 'html': ['prettier'], 'javascript': ['prettier'], 'typescript': ['prettier'], 'typescript.tsx': ['prettier'], 'vue': ['prettier'], 'json': ['prettier']}
let g:gruvbox_contrast_dark = 'medium'
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
set omnifunc=ale#completion#OmniFunc
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
  set guioptions=aegit
  if has('gui_macvim')
    set guifont=Fira\ Mono\ for\ Powerline:h14
  else
    set guifont=JetBrains\ Mono\ Medium\ 13
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
nnoremap ,T :NERDTreeToggle<CR>
nnoremap ,F :NERDTreeFind<CR>
nnoremap ,w :write<CR>
nnoremap ,t :TestNearest<CR>
nnoremap ,y :TestFile<CR>
nnoremap ,g :grep -R --exclude-dir node_modules --exclude-dir dist 
nnoremap ,\ :nohlsearch<CR>
nnoremap ,f :ALEFix<CR>
nnoremap ,l :ALELint<CR>
nnoremap ,] :ALEGoToDefinition<CR>
nnoremap ,a :AsyncRun
nnoremap ,ai :AsyncRun npm i

"auto-commands
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
