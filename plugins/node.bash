export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

function npm-do { (PATH=$(npm bin):$PATH; eval $@;) }
