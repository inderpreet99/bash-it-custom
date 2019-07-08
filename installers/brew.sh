BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
brew update
brew bundle --file=$BASEDIR/Brewfile
