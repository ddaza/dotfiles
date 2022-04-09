"Pathogen plugin
execute pathogen#infect()
syntax on
filetype plugin indent on

" ------- Import files --------
runtime custom/ack.vim
runtime custom/custom.vim
runtime custom/emoji.vim
runtime custom/easymotion.vim
runtime custom/incsearch.vim
runtime custom/emmet.vim
runtime custom/fzf.vim
runtime custom/javascript.vim
runtime custom/nerdtree.vim
runtime custom/netrw.vim
runtime custom/spellcheck.vim
runtime custom/tags.vim
runtime custom/ale.vim
runtime custom/prettier.vim
runtime custom/utilsnips.vim
runtime custom/vimtabs.vim
runtime custom/ycm.vim
runtime custom/airline.vim
runtime custom/nerdtree_git.vim
runtime custom/hardmode.vim
runtime custom/relative.vim
runtime custom/gofmt.vim
"--------------------------------

" Add this in the gits config
let g:github_enterprise_urls = ['https://git.git.com']
" watch for webpack
"set backupcopy=yes
set noswapfile
