#!/bin/bash
VSCODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

if [[ ! -L "$VSCODE_SETTINGS_DIR" ]]; then
    echo "Backing up current VS Code settings into $VSCODE_SETTINGS_DIR.$suffix"
    mv "$VSCODE_SETTINGS_DIR" "$VSCODE_SETTINGS_DIR.$suffix"
    "Symlinking $HOME/Library/Application Support/Code/User to $BASEDIR/vscode."
    ln -s "$BASEDIR/vscode" "$HOME/Library/Application Support/Code/User"
else
    echo "Symlink already established at $HOME/Library/Application Support/Code/User."
fi

# styles
code --install-extension dbaeumer.vscode-eslint

# git
code --install-extension eamodio.gitlens

# nodejs
code --install-extension eg2.vscode-npm-script
code --install-extension christian-kohler.npm-intellisense
code --install-extension msjsdiag.debugger-for-chrome

# productivity
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension britesnow.vscode-toggle-quotes

# python
code --install-extension ms-python.python
