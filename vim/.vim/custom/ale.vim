let g:ale_linters = {
      \   'javascript': ['eslint', 'tsserver', 'cspell'],
      \   'typescript': ['eslint', 'tsserver', 'cspell'],
      \   'typescriptreact': ['eslint', 'tsserver', 'cspell'],
      \   'markdown': ['remark_lint', 'writegood', 'vale', 'alex', 'cspell'],
      \   'json': ['jq', 'jsonlint'],
      \   'rust': ['analyzer'],
      \   'yaml': ['yaml-language-server'],
      \   'go':['golangci-lint'],
      \}

let g:ale_fixers = {
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \   'json': ['eslint', 'prettier'],
      \   'go':['gofumpt', 'goimports', 'golines'],
      \   'rust': ['rustfmt'],
      \}

let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_set_loclist = 1

let g:ale_yaml_spectral_use_global = 1

" Hover Ale
let g:ale_hover_to_preview = 1
let g:ale_set_balloons = 0
let g:ale_floating_preview = 0
let g:ale_hover_to_floating_preview = 0

let g:ale_completion_tsserver_autoimport = 0
let g:ale_completion_enabled = 0
let g:ale_virtualtext_cursor=0

nnoremap <silent> <Leader>ki       :ALEHover<CR>
