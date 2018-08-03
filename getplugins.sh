#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle

git clone https://github.com/mileszs/ack.vim.git
git clone https://github.com/vim-scripts/auto_autoread.vim.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/editorconfig/editorconfig-vim.git
git clone https://github.com/mattn/emmet-vim.git
git clone https://github.com/othree/html5.vim.git
git clone https://github.com/davidhalter/jedi-vim.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/ternjs/tern_for_vim.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/flazz/vim-colorschemes.git
git clone https://github.com/easymotion/vim-easymotion.git
git clone git://github.com/tpope/vim-fugitive.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/heavenshell/vim-jsdoc.git
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/tpope/vim-rhubarb
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/fweep/vim-tabber.git
