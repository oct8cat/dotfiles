set guioptions-=r
set guioptions-=L
set guioptions-=T
set guioptions-=m

if has('gui_macvim')
    set guifont=Roboto\ Mono\ for\ Powerline:h18
else 
    set guifont=Roboto\ Mono\ for\ Powerline\ 14
endif

try
    colorscheme base16-solarized-dark
catch
endtry
