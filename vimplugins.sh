#!/bin/bash
cd ~/.vim/bundle

echo "#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
" > getplugins.sh

for i in ./* ; do
  if [ -d "$i" ]; then
    cd $(basename "$i")
    echo git clone $(git remote get-url origin) >> ../getplugins.sh
    cd ..
  fi
done
