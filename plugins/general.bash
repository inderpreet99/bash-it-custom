
PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/mysql/bin

ff() { find . -name "$@" -print; }
lll() { ls -laF "$@" | less; }
ds() { du -ak "$@" | sort -r -n | less; }
psg() { ps ax | grep "$@" | grep -v grep; }
rmbak() { find . -name \*~ -delete; }
tds() { t ls "$@" | sort; }

mkcd() {
	mkdir -p "$*"
	cd "$*"
}

afor() {
	alias | grep -w "$*" | sort
}

function sedeasy {
	sed -i "s/$(echo $1 | sed -e 's/\([[\/.*]\|\]\)/\\&/g')/$(echo $2 | sed -e 's/[\/&]/\\&/g')/g" $3
}

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi


export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export VISUAL=/usr/bin/vim
export SVN_EDITOR=/usr/bin/vim

export suffix=$(date +%Y-%m-%d-%H%M%S)
