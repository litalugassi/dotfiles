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
alias stylecode="highlight -O rtf $1 -K 24 --style darkness"
alias null="cat > /dev/null"
alias chrome="open -a 'Google Chrome'"

# json format
alias tojson='python -mjson.tool'

# Network utils
alias nptul="lsof -nP -i4TCP | grep LISTEN"
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d ' ' -f2"

# Completion
source ~/dev/.dotfiles/.git-completion.bash
source ~/dev/.dotfiles/tmux_completion
source ~/dev/.dotfiles/.bash_completion

# nginx
alias nginx='sudo nginx'
alias nginxboot='nginx -s stop; nginx'
alias vinginx='vim /usr/local/etc/nginx/nginx.conf'

# Fix shell stuff LC stuff
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
HISTCONTROL=ignoreboth

# Check git managed directories
function checkgitdir() {
    directory=$(cd $1; pwd)
    result=$(git --git-dir $directory/.git --work-tree $directory status --porcelain 2>/dev/null | wc -l | awk '{print $1}')
    if [ "$result" != "0" ]; then
        red="\x1B[31m"
        nc="\x1B[0m"
        echo -e "git directory ${red}${directory}${nc} is dirty"
    fi
}

checkgitdir "$HOME/dev/.dotfiles"
checkgitdir "/etc"

if [ -f ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

