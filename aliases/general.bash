
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

alias ll='ls -laF'
alias j='jobs -l'

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

alias workdisplay="displayplacer.dms 'id:69733378 res:1920x1200 scaling:off origin:(0,0) degree:0' 'id:1007459267 res:1920x1200x60 scaling:off origin:(1920,-1200) degree:0' 'id:1007459268 res:1920x1200x60 scaling:off origin:(0,-1200) degree:0'"
alias workdisplay2="displayplacer.dms 'id:69733378 res:1920x1200 scaling:off origin:(0,0) degree:0' 'id:1007459268 res:1920x1200x60 scaling:off origin:(1920,-1200) degree:0' 'id:1007459267 res:1920x1200x60 scaling:off origin:(0,-1200) degree:0'"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export suffix=$(date)
