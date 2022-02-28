let g:ale_linters = {
\   'javascript': ['eslint', 'tsserver'],
\   'typescript': ['eslint', 'tsserver'],
\   'markdown': ['markdownlint', 'writegood', 'vale', 'alex'],
\   'json': ['jq', 'jsonlint']
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'json': ['eslint', 'prettier']
\}

let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_set_loclist = 1

" Hover Ale
let g:ale_hover_to_preview = 1
let g:ale_set_balloons = 0
let g:ale_floating_preview = 0
let g:ale_hover_to_floating_preview = 0

let g:ale_completion_tsserver_autoimport = 0
let g:ale_completion_enabled = 0

nnoremap <silent> <Leader>ki       :ALEHover<CR>
