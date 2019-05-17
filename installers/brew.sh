BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
brew update
brew bundle --file=$BASEDIR/Brewfile
. "/usr/local/opt/nvm/nvm.sh"

# Node setup after brew installers
nvm install 10
nvm use 10
