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

code --install-extension TabNine.tabnine-vscode
