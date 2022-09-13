function fvim {
  # nvim $(fd --type f | fzf)
  nvim -p $(rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!.cache/" --glob "!.tmp/" --glob "!dist/" | fzf-tmux --multi)
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

# remove duplicates while preserving input order
function dedup {
   awk '! x[$0]++' $@
}

# removes $HISTIGNORE commands from input
function remove_histignore {
   if [ -n "$HISTIGNORE" ]; then
      # replace : with |, then * with .*
      local IGNORE_PAT=`echo "$HISTIGNORE" | sed s/\:/\|/g | sed s/\*/\.\*/g`
      # negated grep removes matches
      grep -vx "$IGNORE_PAT" $@
   else
      cat $@
   fi
}

# taken from https://stackoverflow.com/questions/338285/prevent-duplicates-from-being-saved-in-bash-history
# clean up the history file by remove duplicates and commands matching
# $HISTIGNORE entries
function history_cleanup {
   local HISTFILE_SRC=~/.bash_history
   local HISTFILE_DST=/tmp/.$USER.bash_history.clean
   if [ -f $HISTFILE_SRC ]; then
      \cp $HISTFILE_SRC $HISTFILE_SRC.backup
      dedup $HISTFILE_SRC | remove_histignore >| $HISTFILE_DST
      \mv $HISTFILE_DST $HISTFILE_SRC
      chmod go-r $HISTFILE_SRC
      history -c
      history -r
   fi
}

function gbclean {
	git fetch --all --prune && git branch -l -v | grep '\[gone\]' | awk '{ print $1 }' | xargs git branch -D
}

function kill_chrome {
	pgrep -i 'chrome' | awk '{ print $1 }' | xargs sudo kill -9
}

__fzfcmd() {
  [ -n "$TMUX_PANE" ] && { [ "${FZF_TMUX:-0}" != 0 ] || [ -n "$FZF_TMUX_OPTS" ]; } &&
    echo "fzf-tmux ${FZF_TMUX_OPTS:--d${FZF_TMUX_HEIGHT:-40%}} -- " || echo "fzf"
}

function history_fzf {
  local output
  output=$(
    builtin fc -lnr -2147483648 |
      last_hist=$(HISTTIMEFORMAT='' builtin history 1) perl -n -l0 -e 'BEGIN { getc; $/ = "\n\t"; $HISTCMD = $ENV{last_hist} + 1 } s/^[ *]//; print $HISTCMD - $. . "\t$_" if !$seen{$_}++' |
      FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} $FZF_DEFAULT_OPTS -n2..,.. --tiebreak=index --bind=ctrl-r:toggle-sort,ctrl-z:ignore $FZF_CTRL_R_OPTS +m --read0" $(__fzfcmd) --query "$1"
  ) || return
  READLINE_LINE=${output#*$'\t'}
  if [ -z "$READLINE_POINT" ]; then
    echo "$READLINE_LINE"
  else
    READLINE_POINT=0x7fffffff
  fi
}

