curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

. "$NVM_DIR/nvm.sh"

# Node setup after brew installers
nvm use 10      # regular world
nvm use 8.9.4   # wayfair