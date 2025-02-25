#!/usr/bin/env bash

if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
  export TERM=xterm-256color
fi

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# bash completion
#export BASH_COMPLETION_COMPAT_DIR="/opt/homebrew/etc/bash_completion.d"
#[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && "/opt/homebrew/etc/profile.d/bash_completion.sh"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Less Colors for Man Pages
#export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\e[0m'           # end mode
#export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\e[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\e[0m'           # end underline
#export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline

# Option 2
export LESS_TERMCAP_mb=$'\e[1m\e[32m'
export LESS_TERMCAP_md=$'\e[1m\e[36m'
export LESS_TERMCAP_me=$'\e[m\017'
export LESS_TERMCAP_mr=$'\e[7m'
export LESS_TERMCAP_se=$'\e[23m\e[m\017'
export LESS_TERMCAP_so=$'\e[1m\e[33m\E[44m'
export LESS_TERMCAP_ue=$'\e[24m\e[m\017'
export LESS_TERMCAP_us=$'\e[4m\e[1m\e[37m'

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=999999
export HISTSIZE=99999
export HISTTIMEFORMAT="[%F %T] "
export HISTIGNORE="ls:ll:exit:history:jobs:cls:clear"


# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Set default editor
export EDITOR="nvim"


export GRC=$(which grc)
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
  alias traceroute='colourify traceroute'
  alias head='colourify head'
  alias tail='colourify tail'
  alias dig='colourify dig'
  alias mount='colourify mount'
  alias ps='colourify ps'
  alias mtr='colourify mtr'
  alias df='colourify df'
fi

export RIPGREP_CONFIG_PATH="/Users/[MY_USER]/.ripgreprc"
export BAT_THEME="TwoDark"
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude '.git'"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Allows local packages to add bins to the PATH
export PATH="$PATH:./node_modules/.bin"
# export PATH="./node_modules/.bin:$PATH"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

