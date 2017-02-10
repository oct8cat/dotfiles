set guioptions-=r
set guioptions-=L
set guioptions-=T
set guioptions-=m

if has('gui_macvim')
    set guifont=Meslo\ LG\ S\ for\ Powerline:h18
else 
    set guifont=Droid\ Sans\ Mono\ 12
endif

try
    colorscheme base16-solarized-dark
catch
endtry
