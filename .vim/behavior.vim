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

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_go_checkers =['go']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline_powerline_fonts = 1
let g:jsx_ext_required = 0
let g:user_emmet_settings = {'javascript': {'extends': 'jsx'}, 'javascript.jsx': {'extends': 'jsx'}}
