#!/usr/bin/env bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle

git clone https://github.com/Valloric/ListToggle.git
git clone https://github.com/ycm-core/YouCompleteMe.git
git clone https://github.com/mileszs/ack.vim.git
git clone https://github.com/dense-analysis/ale.git
git clone https://github.com/vim-scripts/auto_autoread.vim.git
git clone https://github.com/dracula/vim.git dracula
git clone https://github.com/editorconfig/editorconfig-vim.git
git clone https://github.com/mattn/emmet-vim.git
git clone https://github.com/junegunn/fzf.vim.git
git clone https://github.com/othree/html5.vim.git
git clone https://github.com/haya14busa/incsearch-easymotion.vim
git clone https://github.com/haya14busa/incsearch-fuzzy.vim
git clone https://github.com/haya14busa/incsearch.vim
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/ternjs/tern_for_vim.git
git clone https://github.com/leafgarland/typescript-vim.git
git clone https://github.com/SirVer/ultisnips.git
git clone https://github.com/tpope/vim-abolish.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/arithran/vim-delete-hidden-buffers.git
git clone https://github.com/easymotion/vim-easymotion.git
git clone https://github.com/junegunn/vim-emoji.git
git clone https://github.com/tpope/vim-eunuch.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/jparise/vim-graphql.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/heavenshell/vim-jsdoc.git
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/plasticboy/vim-markdown.git
git clone https://github.com/prettier/vim-prettier.git
git clone https://github.com/tpope/vim-rhubarb
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/fweep/vim-tabber.git
#git clone https://github.com/flazz/vim-colorschemes.git
