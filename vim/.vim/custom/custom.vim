" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
cmap Wq wq
cmap WQ wq
cmap Qa qa

" --------------- Keybindings -------------------
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

"-- Autocomplete Parenthesis ---
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {{}}<Left><Left>

inoremap (<CR>  (<CR>)<Esc>O
inoremap ({<CR>  ({<CR>})<Esc>O
inoremap [{<CR>  [{<CR>}]<Esc>O
inoremap {*<CR>  {/*<CR>*/}<Esc>O
inoremap [<CR>  [<CR>]<Esc>O

" ------ custom settings -----
set number relativenumber
colorscheme dracula
"colorscheme onedark

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
" clipboard
"set clipboard=unnamedplus "set clipboard to work xterm
" this seems to be working with TMUX
if has('nvim')
  set clipboard+=unnamedplus
else
  set clipboard^=unnamed,unnamedplus
endif

"macvim
"set clipboard=unnamedplus,unnamed
set background=dark
" search smartly case sensitive only when required
set ignorecase
set smartcase
set t_Co=256 "set 256 colors for airline
"set term=screen-256color

"way better option to handle moving away from files
set confirm

set diffopt+=vertical

"set Tags
set tags+=.tags

" 80 chars column
"highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" use 2 or 4 spaces for tabs
set tabstop=2 softtabstop=2 shiftwidth=2
"set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab "set tabs to spaces

" display indentation guides
set list
set listchars=tab:❘·,trail:·,nbsp:·,precedes:«,extends:»,eol:↵
set encoding=utf-8
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10
"set guifont=Liberation\ Mono\ for\ Powerline\ 11
"set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h13
set guifont=Dank\ Mono:h14
set guioptions-=T " hide the toolbar
set guioptions-=r " hide scrollbar
set guioptions-=L " hide scrollbar Macvim
"set the pasing to be smarter?
"set paste

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! s:DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
com! DeleteTrailingWS call s:DeleteTrailingWS()

" Diff with saved file
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffWithSaved call s:DiffWithSaved()
" ---- editorconfig fixed this ----
" autocmd BufWrite *.js :call DeleteTrailingWS()
" autocmd BufWrite *.py :call DeleteTrailingWS()
" autocmd BufWrite *.scss :call DeleteTrailingWS()
autocmd BufNewFile,BufRead *.scss set ft=scss.css

" mouse scrolling
set mouse=a

"autochnangedir
"set autochdir " Change pwd to the current file opened
" CDC = Change to Directory of Current file
if !exists(":CDC")
  command CDC cd %:p:h
endif

" Show current file and copy to clipboard
" relative path
nnoremap <silent> <Leader>fr :let @+ = expand("%")<CR>:echo @+<CR>
" full path
nnoremap <silent> <Leader>fp :let @+ = expand("%:p")<CR>:echo @+<CR>
" just filename
nnoremap <silent> <Leader>ff :let @+ = expand("%:t")<CR>:echo @+<CR>
" reload file
nnoremap <silent> <Leader>ee :e!<CR>
" write file
nnoremap <silent> <Leader>wr :update<CR>

" Adds timestamp at the end of a line
nnoremap <silent> <Leader>dt A<space><C-R>=strftime("(%m/%d/%y-%I:%M%p)")<CR><Esc>
nnoremap <silent> <Leader>xdt ^t]rXA<space><C-R>=strftime("(%m/%d/%y-%I:%M%p)")<CR><Esc>

" Move Lines Up/Down
" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv

" Move Lines Up/Down MACOS
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
"inoremap ∆ <Esc>:m .+1<CR>==gi " No insert
"inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

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

"fix arrow keys
set nocompatible

" Select entire buffer <Visual>af
vnoremap af :<C-U>silent! normal! ggVG<CR>

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" search no jump
nnoremap * *``

if !has('nvim')
  set pythonthreedll=/usr/local/Frameworks/Python.framework/Versions/Current/Python
endif


if has('nvim')
  let g:python_host_prog  = '/usr/bin/python'
  let g:python3_host_prog = '/usr/local/bin/python3'
endif

"function! SetupEnvironment()
"  let l:path = expand('%:p')
"  if l:path =~ '/home/user/work/project1'
"    setlocal tabstop=4 softtabstop=4 shiftwidth=4
"  elseif l:path =~ '/home/user/work/project2'
"    setlocal tabstop=2 softtabstop=2 shiftwidth=2
"  endif
"endfunction

"autocmd! BufReadPost,BufNewFile * call SetupEnvironment()
