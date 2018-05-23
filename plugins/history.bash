# https://sanctum.geek.nz/arabesque/better-bash-history/

export HISTCONTROL=ignoreboth:erasedups  
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTTIMEFORMAT='%F %T '
export PROMPT_COMMAND='history -a'

shopt -s histappend
shopt -s cmdhist
