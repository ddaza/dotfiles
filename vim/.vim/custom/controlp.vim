"-------------ControlP-----
let g:ctrlp_map = '<c-p>'
" If a file is already open, open it again in a new pane
let g:ctrlp_switch_buffer = 'Et'
"let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = 'node_modules\|git\|dist\|.cache'
" Ignore files in .gitignore
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
"
"let g:ctrlp_user_command = 'fd --type f --full-path %s --color never'
"let g:ctrlp_user_command = 'find %s -type f'
"
let g:ctrlp_user_command = {
      \ 'types': {
      \ 1: ['.git', 'cd %s && git ls-files'],
      \ 2: ['.hg', 'hg --cwd %s locate -I .'],
      \ },
      \ 'fallback': 'fd --type f --full-path %s --color never'
      \ }
let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching = 0
