# handy aliases
alias tree='/usr/bin/tree'
alias mkdir='mkdir -p'
alias cls='tput reset'
alias tmux='TERM=screen-256color-bce tmux'
#alias ack='ack-grep'
alias dcp='docker-compose'
alias wget='wget -e robots=off --no-check-certificate --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" --header="Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5" --header="Accept-Language: en-us,en;q=0.5" --header="Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7" --header="Keep-Alive: 300"'
alias docker-service-start='sudo service docker start'
alias docker-service-stop='sudo service docker stop'
alias history-sync='history -a; history -c; history -r'
alias net-restart='sudo service network-manager restart'
alias alias-edit='vim ~/.bash_it/aliases/custom.aliases.bash'
