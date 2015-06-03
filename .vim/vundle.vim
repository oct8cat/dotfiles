set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'

Bundle 'marcweber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

Bundle 'Raimondi/delimitMate'
Bundle 'digitaltoad/vim-jade'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'garbas/vim-snipmate'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'chriskempson/base16-vim'
Bundle 'mattn/emmet-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'diepm/vim-rest-console'

let g:airline_powerline_fonts = 1

call vundle#end()
