let g:ycm_show_diagnostics_ui = 0
"let g:ycm_cache_omnifunc = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_use_ultisnips_completer = 1
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_server_python_interpreter='/usr/local/bin/python3'
let g:ycm_key_list_stop_completion = ['<C-y>', '<Enter>']
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
"let g:ycm_semantic_triggers={
"    \ 'javascript': ['re!\w{2}', '.'],
"    \ 'typescript': ['re!\w{2}', '.'],
"\}

let g:ycm_tsserver_binary_path = 'tsserver'
let g:ycm_tsserver_args = ['--checkJs']

"let g:ycm_key_list_previous_completion = ['<Up>', '<S-TAB>']
" \     'cmdline': [ '/Users/z0031ww/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/tsserver/bin/tsserver', '--checkJs' ],
" \     'cmdline': [ '/Users/z0031ww/.nvm/versions/node/v12.13.1/bin/tsserver', '--checkJs' ],
"let g:ycm_language_server =
"  \ [
"  \   {
"  \     'name': 'javascript',
"  \     'cmdline': [ '/User/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/tsserver/bin/tsserver', '--checkJs' ],
"  \     'filetypes': [ 'javascript.jsx' ]
"  \   }
"  \]
