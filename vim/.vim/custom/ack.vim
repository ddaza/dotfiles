" Add Ack handling
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" if executable('ag')
"   let g:ackprg = 'ag --vimgrep'
" endif

if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
