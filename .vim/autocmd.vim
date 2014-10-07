autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd BufWritePre * :%s/\s\+$//e " Strip trailing WS on save
