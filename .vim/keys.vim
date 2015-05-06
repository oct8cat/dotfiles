map <F2> :NERDTreeToggle<CR>
nmap <F5> :bprev<CR>
nmap <F6> :bnext<CR>
nmap <Leader>/ :nohlsearch<CR>
if has('gui_running')
    nmap <Leader>t :make test<CR>
    nmap <Leader>j :make lint<CR>
else
    nmap <Leader>t :!make test<CR>
    nmap <Leader>j :!make lint<CR>
endif
nmap <Leader>w :w<CR>
nmap <Leader>be :MBEToggle<CR>
