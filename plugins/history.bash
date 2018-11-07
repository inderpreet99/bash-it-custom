# https://sanctum.geek.nz/arabesque/better-bash-history/

export HISTCONTROL=ignoreboth:erasedups  
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTTIMEFORMAT='%F %T '

# Save and reload the history after each command finishes from https://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

shopt -s histappend # history list is appended when the shell exits rather than overwriting the file.
shopt -s cmdhist # save all lines of a multiple-line command in the same history entry
