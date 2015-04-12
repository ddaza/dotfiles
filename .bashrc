#custom adds

if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi


alias ll='ls -al'
alias cls='tput reset'
alias tmux='TERM=screen-256color-bce tmux'
alias vus='vagrant up && vagrant ssh'
alias ack='ack-grep'

# add NVM
#source ~/.nvm/nvm.sh
#[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# adds current working directory (pwd) in the title of xterm (renaming /home to ~).
#export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/\~}\007"'

#change terminal promnt and title to PWD
PS1='\[$(tput bold)\]\[$(tput setaf 2)\]\w $ \[$(tput sgr0)\]\[$(tput sgr0)\]'
