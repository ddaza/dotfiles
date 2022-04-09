function! s:RelativeNumbers()
  if &nu == 1 && &rnu == 0
    set rnu
  else
    set nornu
  endif
endfunction
com! RelativeNumbers call s:RelativeNumbers()
