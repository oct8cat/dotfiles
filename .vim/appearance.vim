if has('gui_running')
    set guioptions-=r
    set guioptions-=L
    set guioptions-=T
    set guioptions-=m
    set guifont=Meslo\ LG\ S\ for\ Powerline\ 14
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
