" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
"set rtp+=/opt/homebrew/opt/fzf

nnoremap <silent> <Leader>fz :Files<CR>

"cnoreabbrev Ag Ag!
"nnoremap <Leader>k :Ag<Space>

"cnoreabbrev Rg Rg!
nnoremap <Leader>r :Rg<Space>

command! -bang -nargs=* Rg
      \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".<q-args>
      \, 1, fzf#vim#with_preview(), <bang>0)

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
