let g:ycm_show_diagnostics_ui = 0
"let g:ycm_cache_omnifunc = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_use_ultisnips_completer = 1
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_server_python_interpreter=$HOMEBREW_PREFIX.."/bin/python3.11"
let g:ycm_key_list_stop_completion = ['<C-y>', '<Enter>']
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
"let g:ycm_semantic_triggers={
"    \ 'javascript': ['re!\w{2}', '.'],
"    \ 'typescript': ['re!\w{2}', '.'],
"\}

let g:ycm_tsserver_binary_path = 'tsserver'
let g:ycm_tsserver_args = ['--checkJs']

let g:ycm_filetype_blacklist =
\{
\   'tagbar': 1,
\   'notes': 1,
\   'netrw': 1,
\   'unite': 1,
\   'text': 1,
\   'vimwiki': 1,
\   'pandoc': 1,
\   'infolog': 1,
\   'leaderf': 1,
\   'mail': 1
\ }

