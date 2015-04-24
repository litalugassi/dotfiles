# Prompt
BLACK="\[\e[0;30m\]"
RED="\[\e[0;31m\]"
GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
MAGENTA="\[\e[0;35m\]"
CYAN="\[\e[0;36m\]"
LIGHT="\[\e[0;37m\]"
NC="\[\e[0m\]"

PS1="<${BLUE}\u${NC}@${GREEN}\h${NC}:\W${NC}> \$ "

export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR=vim

# Open file limit for grunt
ulimit -n 2560

# Aliases
alias ls='ls -G'
alias ll='ls -l'
alias lt='ls -ltr'
alias sl='source ~/.bashrc'
alias vibrc='vim ~/.bashrc'
alias wget='curl -O'
alias grep='grep --color'

# Cd aliases
alias cdravello='cd ~/work/ravello'
alias cdrounds='cd ~/work/rounds'
alias cdpirates='cd ~/work/skillz/pirates'

# json format
alias tojson='python -mjson.tool'

# Network utils
alias nptul="lsof -nP -i4TCP | grep LISTEN"

# Git
source ~/.scripts/.git-completion.bash

# nginx
alias nginx='sudo nginx'
alias nginxboot='nginx -s stop; nginx'
alias vinginx='vim /usr/local/etc/nginx/nginx.conf'

# Fix shell stuff LC stuff
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
HISTCONTROL=ignoreboth

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
