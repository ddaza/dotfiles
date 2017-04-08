" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

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
inoremap {/*<CR>  {/*<CR>*/}<Esc>O
inoremap [<CR>  [<CR>]<Esc>O

" ------ custom settings -----
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
set guifont=Liberation\ Mono\ for\ Powerline\ 11
"set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h11
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

" Custom keybindings
runtime custom/keybindings.vim

" Select entire buffer <Visual>af
vnoremap af :<C-U>silent! normal! ggVG<CR>

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" search no jump
nnoremap * *``

"function! SetupEnvironment()
"  let l:path = expand('%:p')
"  if l:path =~ '/home/user/work/project1'
"    setlocal tabstop=4 softtabstop=4 shiftwidth=4
"  elseif l:path =~ '/home/user/work/project2'
"    setlocal tabstop=2 softtabstop=2 shiftwidth=2
"  endif
"endfunction

"autocmd! BufReadPost,BufNewFile * call SetupEnvironment()
