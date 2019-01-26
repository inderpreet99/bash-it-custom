BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
brew bundle --file=$BASEDIR/Brewfile
. "/usr/local/opt/nvm/nvm.sh"
nvm install 10
nvm use 10
