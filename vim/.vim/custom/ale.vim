let g:ale_linters = {
      \   'javascript': ['eslint', 'tsserver', 'cspell'],
      \   'typescript': ['eslint', 'tsserver', 'cspell'],
      \   'typescriptreact': ['eslint', 'tsserver', 'cspell'],
      \   'markdown': ['remark_lint', 'vale', 'cspell', 'alex'],
      \   'gitcommit': ['vale', 'cspell'],
      \   'json': ['jq', 'jsonlint'],
      \   'rust': ['analyzer'],
      \   'yaml': ['yaml-language-server', 'swaglint'],
      \   'go':['gopls', 'gobuild', 'govet', 'golangci-lint'],
      \   '*':['vale'],
      \}

let g:ale_fixers = {
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \   'json': ['eslint', 'prettier'],
      \   'go':['gofumpt', 'goimports', 'golines', 'gopls'],
      \   'markdown': ['remark_lint'],
      \   'rust': ['rustfmt'],
      \}

let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 0
let g:ale_set_loclist = 1

" Hover Ale
"
let g:ale_hover_to_preview = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']

"let g:ale_floating_preview = 1
let g:ale_hover_to_floating_preview = 1
let g:ale_detail_to_floating_preview = 0


"let g:ale_set_balloons = 0

"let g:ale_completion_tsserver_autoimport = 0
let g:ale_completion_enabled = 1
let g:ale_virtualtext_cursor = 0

let g:ale_go_golangci_lint_options = '--fast'

nnoremap <silent> <Leader>ki       :ALEHover<CR>
