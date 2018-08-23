# chsh -s /usr/local/bin/bash

if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
  export TERM=xterm-256color
fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=
HISTFILESIZE=
HISTTIMEFORMAT="[%F %T] "
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Set default editor
export EDITOR="vim"

# If not running interactively, don't do anything
case $- in
  *i*) ;;
*) return;;
esac

### COLOR MAN PAGES
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[01;31m") \
    LESS_TERMCAP_md=$(printf "\e[01;38;5;74m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[01;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[01;32m") \
    man "$@"
}

export GRC=`which grc`
if [ "$TERM" != dumb ] && [ -n "$GRC" ]
then
  alias colourify="$GRC -es --colour=auto"
  alias configure='colourify ./configure'
  alias diff='colourify diff'
  alias make='colourify make'
  alias gcc='colourify gcc'
  alias g++='colourify g++'
  alias as='colourify as'
  alias gas='colourify gas'
  alias ld='colourify ld'
  alias netstat='colourify netstat'
  alias ping='colourify ping'
  alias traceroute='colourify /usr/sbin/traceroute'
  alias head='colourify head'
  alias tail='colourify tail'
  alias dig='colourify dig'
  alias mount='colourify mount'
  alias ps='colourify ps'
  alias mtr='colourify mtr'
  alias df='colourify df'
fi

# cd into the root folder of repository
alias groot='cd "$(git rev-parse --show-toplevel)"'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

## BASHIT config below


