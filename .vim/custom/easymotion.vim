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

" Make paste work in macvim
autocmd VimEnter,BufEnter * :EMCommandLineNoreMap \"\+gP <C-r>+

" JK motions: Line motions
"map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)

"" <Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)

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
