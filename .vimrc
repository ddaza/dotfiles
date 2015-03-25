"Pathogen plugin
execute pathogen#infect()
syntax on
filetype plugin indent on

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"-------------AirLine-------------
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

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
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['jsxhint']

"----------------------------

set number
colorscheme molokai
"colorscheme koehler
set wildmenu
set showcmd " show last command
set lazyredraw " redraw page only when needed
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
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10

"set the pasing to be smarter?
"set paste

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
"func! DeleteTrailingWS()
"  exe "normal mz"
"  %s/\s\+$//ge
"  exe "normal `z"
"endfunc
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
