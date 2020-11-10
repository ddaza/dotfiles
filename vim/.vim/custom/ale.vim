let g:ale_linters = {
\   'javascript': ['eslint', 'tsserver'],
\   'typescript': ['eslint', 'tsserver'],
\   'markdown': ['markdownlint', 'writegood', 'vale', 'alex']
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\}

let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_set_loclist = 1

let g:ale_completion_tsserver_autoimport = 0
let g:ale_completion_enabled = 0
