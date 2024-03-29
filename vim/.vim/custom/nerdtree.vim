autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>tt :NERDTree <C-R>=expand('%:p:h') . '/'<CR><CR>

let g:NERDTreeShowLineNumbers=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeQuitOnOpen=1
