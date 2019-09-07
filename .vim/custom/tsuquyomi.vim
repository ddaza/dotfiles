"autocmd FileType typescript setlocal completeopt-=menu
let g:tsuquyomi_disable_quickfix = 1
"autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType typescript nmap <buffer> <Leader>ts : <C-u>echo tsuquyomi#hint()<CR>
