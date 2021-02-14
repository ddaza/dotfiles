"-----------Vim Spellcheck----------
"nnoremap <silent> <Leader>S        :setlocal spell! spelllang=en_us<CR>
"nnoremap <silent> <Leader>sln        :set nospell<CR>
"
" Toggle spellchecking
function! ToggleSpellCheck()
  setlocal spell!
  if &spell
    echo "Spellcheck ON"
  else
    echo "Spellcheck OFF"
  endif
endfunction

nnoremap <silent> <Leader>S :call ToggleSpellCheck()<CR>
