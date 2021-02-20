# handy aliases
alias mkdir='mkdir -p'
#alias tmux='TERM=screen-256color-bce tmux'
alias tmux='TERM=screen-256color tmux'
# alias ack='ack-grep'
alias dcp='docker-compose'
alias wget="wget -e robots=off --no-check-certificate --referer='http://www.google.com' --user-agent='Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6' --header='Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5' --header='Accept-Language: en-us,en;q=0.5' --header='Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7' --header='Keep-Alive: 300'"
alias history-sync='history -a; history -c; history -r'
# alias net-restart='sudo service network-manager restart'
alias alias-edit='vim ~/.bash_it/aliases/custom.aliases.bash'
alias vim='nvim'
alias cheat="cht.sh"

# We want to use '#' as a markdown character, so let's use '%' for comments
alias gpl="hub -c core.commentChar='%' pull-request"
alias gis="hub -c core.commentChar='%' issue create"

alias generate-tags="ag -l | ctags -L-"
alias prettify="git diff --name-only | xargs yarn prettier --config ./.prettierrc.js --write"
alias gcanm="git commit -v -anm"
alias gcnam="git commit -v -anm"
alias gcnm="git commit -v -nm"
alias gurl="git remote show origin"
alias gbclean="git fetch --all --prune && git branch -l -v | grep '\[gone\]' | awk '{ print $1 }' | xargs git branch -D"
alias gcomgl="git checkout master; git pull"
alias gwip="git commit -anm \"--wip-- [skip ci]\""

# Mac Only
# alias real-vim='/Applications/MacVim.app/Contents/MacOS/Vim'
# alias sfiles='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
# alias hfiles='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'
# alias chrome-insecure='open -a Google\ Chrome --args --disable-web-security --user-data-dir'
# alias chrome-insecure="open -na /Applications/Google\ Chrome.app --args --disable-web-security --ignore-certificate-errors --allow-running-insecure-content --user-data-dir --disable-site-isolation-trials"
# alias canary-insecure="open -na /Applications/Google\ Chrome\ Canary.app --args --disable-web-security --ignore-certificate-errors --allow-running-insecure-content --user-data-dir=\"/Users/z0031ww/.chrome-canary/\" --disable-site-isolation-trials"
# alias t-dns='echo "127.0.0.1    localhost.t.com" | sudo tee -a  /private/etc/hosts && dscacheutil -flushcache'
alias meld="/Applications/Meld.app/Contents/MacOS/Meld"

# Work
alias ios-simulator="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias watch="yarn jest --watch"
alias watchdumb="TERM=dumb yarn jest --watch --verbose=true"
alias kill-chrome="ps -ax | grep -i chrome | awk '{print $1}' | xargs kill -9"
alias 2black="black --target-version=py27 --fast"
alias gcempty="git commit --allow-empty"
alias orig-files-delete="find . -type f -name '*.orig' -delete"

alias wss_bounce="pgrep -if '/opt/symantec/wssa/wssad' | xargs -n1 sudo kill -9"
alias nginx_bounce="sudo nginx -s stop && sudo nginx"
alias rm="rm -i"
