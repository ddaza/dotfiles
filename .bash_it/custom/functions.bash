function fvim {
  nvim $(fd --type f | fzf)
}

function search-replace() {
  if [ -z "$1" ] && [ -z "$2" ]; then
    echo "Please pass some arguments:"
    echo "\$ search-replace <SEARCH_STRING> <REPLACE_STRING>"
    return
  fi

  echo "REPLACING this: $1  with: $2"
  ag "$1" -l --print0 | xargs -0 -n 1 sed -i '' -e "s/$1/$2/g"
}

function npm-which() {
  npm_bin=$(npm bin)
  bin_name=$1
  local_path="${npm_bin}/${bin_name}"
  [[ -f $local_path ]] && echo "$local_path"
}

# Compatible with ranger 1.4.2 through 1.7.*
#
# Automatically change the directory in bash after closing ranger
#
# This is a bash function for .bashrc to automatically change the directory to
# the last visited one after ranger quits.
# To undo the effect of this function, you can type "cd -" to return to the
# original directory.
#
# On OS X 10 or later, replace `usr/bin/ranger` with `/usr/local/bin/ranger`.

function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    /usr/local/bin/ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}
