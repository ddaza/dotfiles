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
" ------ hide Swap files from NetRw----

let g:netrw_list_hide= '.*\.swp$'
let g:netrw_hide = 1

"-------------AirLine-------------
"let g:airline_theme='bubblegum'
let g:airline_theme='kolor'
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1

"-----------Vim Spellcheck----------
nnoremap <silent> <Leader>ll        :setlocal spell spelllang=en_us<CR>
nnoremap <silent> <Leader>ln        :set nospell<CR>

"-----------Vim Tabber-------------
set tabline=%!tabber#TabLine()
let g:tabber_wrap_when_shifting = 1

nnoremap <silent> <Leader>tn       :tabnew<CR>
"nnoremap <silent> <Leader>te       :tabe .<CR>
nnoremap <silent> <Leader>te       :tabe <C-R>=expand('%:p:h') . '/'<CR><CR>
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
"nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-s2)
" Gif config
"nmap s <Plug>(easymotion-s2)
"nmap t <Plug>(easymotion-t2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
"map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)

"" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
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
"let g:syntastic_javascript_jshint_exec = '/Users/daniel/.nvm/versions/node/v5.0.0/bin/eslint'
"let g:syntastic_debug = 32
nnoremap <silent> <Leader>ew    :SyntasticToggleMode<CR>
nnoremap <silent> <Leader>ww    :SyntasticCheck<CR>

"----------vim-JSDoc----------
nmap <silent> <C-l> <Plug>(jsdoc)
let g:jsdoc_enable_es6 = 1
"----------vim-javascript----------
"syntax enable
"set regexpengine=1
let g:jsx_ext_required = 0
let tern#is_show_argument_hints_enabled = 1
let tern_request_timeout = 0.8
"autocmd CompleteDone * pclose
set completeopt-=preview
"------ Preeeeety icons ---------
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_arrow_function = "⇒"

"-----------supertab------------
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
autocmd FileType *
      \if &omnifunc != '' |
      \call SuperTabChain(&omnifunc, '<c-p>', 1) |
      \endif

"-----------SnipMate------------
let g:snipMate = {}
let g:snipMate.snippet_version = 1

" load JS Snippets
"let g:snipMate.scope_aliases = {}
"let g:snipMate.scope_aliases['javascript'] ='javascript/javascript,javascript/javascript.node,javascript/javascript-requirejs'
"--------------------------------
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
"set clipboard=unnamedplus "set clipboard to work xterm
" this seems to be working with TMUX
set clipboard^=unnamed,unnamedplus
set background=dark
" search smartly case sensitive only when required
set ignorecase
set smartcase
set t_Co=256 "set 256 colors for airline
set term=screen-256color

"way better option to handle moving away from files
set confirm

" 80 chars column
"highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" use 2 or 4 spaces for tabs
set tabstop=2 softtabstop=2 shiftwidth=2
"set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab "set tabs to spaces

" display indentation guides
set list
set listchars=tab:❘·,trail:·,nbsp:·,precedes:«,extends:»,eol:↲
set encoding=utf-8
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10
"set guifont=Liberation\ Mono\ for\ Powerline\ 11
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h11
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
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.scss :call DeleteTrailingWS()
autocmd BufNewFile,BufRead *.scss set ft=scss.css

" mouse scrolling
set mouse=a

"autochnangedir
"set autochdir " Change pwd to the current file opened
" CDC = Change to Directory of Current file
command CDC cd %:p:h

"autocomplete Parenthesis
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {{}}<Left><Left>

inoremap (<CR>  (<CR>)<Esc>O
inoremap ({<CR>  ({<CR>})<Esc>O
inoremap {/*<CR>  {/*<CR>*/}<Esc>O
inoremap [<CR>  [<CR>]<Esc>O

" MacVim silence error sounds
set noerrorbells
set novisualbell
autocmd! GUIEnter * set vb t_vb=

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

" Select entire buffer <Visual>af
vnoremap af :<C-U>silent! normal! ggVG<CR>

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" search no jump
nnoremap * *``
"Disable F1 from popping up stuff
map <F1> <Esc>
vmap <F1> <Esc>
imap <F1> <Esc>

"function! SetupEnvironment()
"  let l:path = expand('%:p')
"  if l:path =~ '/home/user/work/project1'
"    setlocal tabstop=4 softtabstop=4 shiftwidth=4
"  elseif l:path =~ '/home/user/work/project2'
"    setlocal tabstop=2 softtabstop=2 shiftwidth=2
"  endif
"endfunction

"autocmd! BufReadPost,BufNewFile * call SetupEnvironment()
