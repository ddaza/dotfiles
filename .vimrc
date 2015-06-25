"Pathogen plugin
execute pathogen#infect()
syntax on
filetype plugin indent on

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
"-----------NETRW------
let g:netrw_banner    = 0      " Do not display info on top
let g:netrw_liststyle = 3      " default to tree-style file listing
let g:netrw_winsize   = 30     " use 30% of columns for list
let g:netrw_preview   = 1      " default to vertical splitting for preview
"-------------ControlP-----
let g:ctrlp_map = '<c-p>'
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = 'node_modules\|git\|dist'
let g:ctrlp_show_hidden = 1

"-------------AirLine-------------
"let g:airline_theme='bubblegum'
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"-----------Vim Tabber-------------
set tabline=%!tabber#TabLine()
let g:tabber_wrap_when_shifting = 1

nnoremap <silent> <Leader>tn       :tabnew<CR>
nnoremap <silent> <Leader>te       :tabe .<CR>
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

"------------Easymotion-------------
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" Gif config
map  / <Plug>(easymotion-sn)
"-------------Syntastic-----------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['jsxhint']
"let g:syntastic_javascript_jshint_exec = '/usr/bin/jshint'
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_debug = 32
nnoremap <silent> <Leader>ew    :SyntasticToggleMode<CR>
nnoremap <silent> <Leader>ww    :SyntasticCheck<CR>

"------------SnipMate-------------
" load JS Snippets
"let g:snipMate = {}
"let g:snipMate.scope_aliases = {}
"let g:snipMate.scope_aliases['javascript'] ='javascript/javascript,javascript/javascript.node,javascript/javascript-requirejs'

"--------YouCompleteMe--------

"let g:ycm_use_ultisnips_completer = 1
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_completion = 1 
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_invoke_completion = '<Tab>'
"let g:ycm_auto_trigger = 0

"-------UltiSnips--------------

"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"

""----------vim-javascript----------
""syntax enable
""set regexpengine=1
"let g:jsx_ext_required = 0
"let tern#is_show_argument_hints_enabled = 1
"autocmd CompleteDone * pclose
"
""-----------supertab------------
"let g:SuperTabDefaultCompletionType = "context"
""let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
""let g:SuperTabContextDiscoverDiscovery =  ["&completefunc:<c-x><c-u>", \"&omnifunc:<c-x><c-o>"]
"let g:SuperTabLongestEnhanced = 1
"autocmd FileType *
"      \if &omnifunc != '' |
"      \call SuperTabChain(&omnifunc, "<c-p>") |
""      \call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
"      \endif
""---------------------------------

set number
colorscheme molokai
"colorscheme koehler
set wildmenu
set showcmd " show last command
"set lazyredraw " redraw page only when needed
set smarttab
"set smartindent
set autoindent
set history=500
set showmatch "show matching braces
set hlsearch
set laststatus=2
set foldenable "add foldable code?
set clipboard=unnamedplus "set clipboard to work xterm
set background=dark
" search smartly case sensitive only when required
set ignorecase
set smartcase
set t_Co=256 "set 256 colors for airline

"way better option to handle moving away from files
set confirm

" 80 chars column
"highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" use 2 or 4 spaces for tabs
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab "set tabs to spaces

" display indentation guides
set listchars=tab:❘·,trail:·,nbsp:·,precedes:«,extends:»,eol:↲
set list
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10
set guifont=Liberation\ Mono\ for\ Powerline\ 11
set guioptions-=T " hide the toolbar
set guioptions-=r " hide scrollbar
"set the pasing to be smarter?
"set paste

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.scss :call DeleteTrailingWS()
"autocmd BufWrite *.py :call DeleteTrailingWS()
"autocmd BufWrite *.coffee :call DeleteTrailingWS()

" load JS Snippets
"let g:snipMate = {}
"let g:snipMate.scope_aliases = {}
"let g:snipMate.scope_aliases['javascript'] ='javascript/javascript,javascript/javascript.node,javascript/javascript-requirejs'
""
" mouse scrolling
set mouse=a

"autochnangedir
set autochdir " Change pwd to the current file opened

"autocomplete Parenthesis
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {{}}<Left><Left>

inoremap (<CR>  (<CR>)<Esc>O
inoremap ({<CR>  ({<CR>})<Esc>O

inoremap [<CR>  [<CR>]<Esc>O

" Code Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

"cursorline to see where are you
set cursorline
" Avoid ESC key Two semicolons are easy to type.
imap ;; <Esc>
" Leaving the Ex Mode forever
nnoremap Q <nop>
"Save with F2
nmap <F2> :update<CR>
vmap <F2> <Esc><F2>gv
imap <F2> <c-o><F2>

"Disable F1 from popping up stuff
map <F1> <Esc>
vmap <F1> <Esc>
imap <F1> <Esc>
