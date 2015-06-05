#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle

# --- javascript --- 
git clone https://github.com/marijnh/tern_for_vim.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/jelera/vim-javascript-syntax.git
git clone https://github.com/mxw/vim-jsx.git
# --- syntastic ---
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/alvinhuynh/vim-syntastic-scss-lint.git
# -- snipmate --
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/alvinhuynh/vim-syntastic-scss-lint.git
git clone https://github.com/honza/vim-snippets.git
# --- airline --
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/fweep/vim-tabber.git
# --- misc ---
git clone https://github.com/mileszs/ack.vim.git
git clone https://github.com/Lokaltog/vim-easymotion.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/othree/html5.vim.git
git clone https://github.com/ervandew/supertab.git
