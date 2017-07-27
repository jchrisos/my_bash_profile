# disable touchscreen in dell laptop on ubuntu
xinput disable "ELAN Touchscreen"

#==================================================
#exports

#show git branch
export PS1='\[\e[1;34m\]\u: \w\[\e[32m\]$(__git_ps1)\[\e[0m\] \[\e[1;34m\]>>\[\e[0m\] '

#my projects folder set in CDPATH
export CDPATH='~/Projects'

#==================================================
# functions and alias
function dcu() {
  if [ -z "$1" ]; then
    docker-compose up
  else  
    docker-compose -f "$1" up
  fi
}

function dexec() {
  docker exec -it "$1" bash
}

alias dck='docker-compose kill'
alias dps='docker ps --format "table {{.Names}}"'
