" Neovim entry point.
" Shares the regular Vim config (~/_vimrc and the ~/vimfiles plugins)
" with Neovim, while keeping lazy.nvim for Neovim-only plugins (ALE).

let g:python3_host_prog = expand('$LOCALAPPDATA/Python/pythoncore-3.14-64/python.exe')

" 1) Load Neovim-only plugins via lazy.nvim.
"    IMPORTANT: lazy.nvim rebuilds 'runtimepath' during setup() and drops any
"    custom entries we add, so it must run FIRST (before we add ~/vimfiles).
lua << EOF
require("config.lazy")
EOF

" 2) Add the shared Vim config directory to runtimepath so pathogen + its
"    bundles are found. runtimepath entries MUST be directories, never the
"    _vimrc file. We add it AFTER lazy so it survives lazy's rebuild.
let &runtimepath .= ',' . expand('~/vimfiles')
let &runtimepath .= ',' . expand('~/vimfiles/after')

" 3) Source the shared Vim settings/keymaps and run pathogen#infect(), which
"    adds every plugin under ~/vimfiles/bundle to runtimepath.
if filereadable($HOME . '/_vimrc')
  execute 'source' fnameescape($HOME . '/_vimrc')
endif

"nnoremap <silent> <Leader>ki       :ALEHover<CR>

" 4) Neovim has already sourced the default runtimepath plugin scripts before
"    this init file ran, so the bundle plugin files we just added must be
"    sourced explicitly.
runtime! plugin/**/*.vim
