#!/usr/bin/env bash

BACKUP_SCRIPT_FILE_NAME="vim_get_plugins.sh"

echo "#!/usr/bin/env bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
" > "$BACKUP_SCRIPT_FILE_NAME"

for i in ~/.vim/bundle/* ; do
  if [ -d "$i" ]; then
    echo $i
    echo git clone $(git --git-dir "$i/.git" remote get-url origin) >> "$BACKUP_SCRIPT_FILE_NAME"
  fi
done

chmod +x "$BACKUP_SCRIPT_FILE_NAME"
