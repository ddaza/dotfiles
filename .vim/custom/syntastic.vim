"-------------Syntastic-----------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ---- add this to after vim : ----
"autocmd FileType javascript
"      \if stridx(expand('%:p'), '/home/daniel/work/albert-marketplace/') == 0 |
"      \let b:syntastic_checkers = ['eslint'] | endif
"-----------------------------------
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_jshint_exec = '/usr/bin/jshint'
let g:syntastic_javascript_checkers = ['eslint']
" Faster eslint
"let g:syntastic_javascript_eslint_exec = 'eslint_d'
"let g:syntastic_javascript_jshint_exec = '/Users/daniel/.nvm/versions/node/v5.0.0/bin/eslint'
"let g:syntastic_debug = 32
nnoremap <silent> <Leader>ew    :SyntasticToggleMode<CR>
nnoremap <silent> <Leader>ww    :SyntasticCheck<CR>
