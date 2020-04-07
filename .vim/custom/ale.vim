let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint', 'tsserver']
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint']
\}

let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
"let g:ale_completion_tsserver_autoimport = 1
let g:ale_completion_enabled = 0

nnoremap <silent> <Leader>qq    :lwindow<CR>
