"Pathogen plugin
execute pathogen#infect()
syntax on
filetype plugin indent on

" ------- Import files --------

runtime custom/custom.vim
runtime custom/airline.vim
runtime custom/spellcheck.vim
runtime custom/vimtabs.vim
runtime custom/netrw.vim
runtime custom/controlp.vim
runtime custom/easymotion.vim
runtime custom/syntastic.vim
runtime custom/javascript.vim
runtime custom/supertab.vim
runtime custom/snipmate.vim
runtime custom/emmet.vim
runtime custom/nerdtree.vim
"--------------------------------

" Add this in the gits config
let g:github_enterprise_urls = ['']
" watch for webpack
"set backupcopy=yes
"set noswapfile
