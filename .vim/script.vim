function! Hello()
    return 'Hello, world'
endfunction

imap <C-D><C-D> <C-R>=Hello()<CR>
