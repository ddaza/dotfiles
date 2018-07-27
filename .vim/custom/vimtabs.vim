"-----------Vim Tabber-------------
set tabline=%!tabber#TabLine()
let g:tabber_wrap_when_shifting = 1

nnoremap <silent> <Leader>tn       :tabnew<CR>
"nnoremap <silent> <Leader>te       :tabe .<CR>
nnoremap <silent> <Leader>te       :tabe <C-R>=expand('%:p:h') . '/'<CR><CR>
nnoremap <silent> <Leader>ts       :tablast<CR>
nnoremap <silent> <Leader>tl       :TabberShiftLeft<CR>
nnoremap <silent> <Leader>tr       :TabberShiftRight<CR>
nnoremap <silent> <Leader>tc       :tabclose<CR>
nnoremap <silent> <Leader>1        :tabnext 1<CR>
nnoremap <silent> <Leader>2        :tabnext 2<CR>
nnoremap <silent> <Leader>3        :tabnext 3<CR>
nnoremap <silent> <Leader>4        :tabnext 4<CR>
nnoremap <silent> <Leader>5        :tabnext 5<CR>
nnoremap <silent> <Leader>6        :tabnext 6<CR>
nnoremap <silent> <Leader>7        :tabnext 7<CR>
nnoremap <silent> <Leader>8        :tabnext 8<CR>
nnoremap <silent> <Leader>9        :tabnext 9<CR>
nnoremap <silent> <Leader>10       :tabnext 10<CR>
