#!/bin/bash
VSCODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

if [[ ! -L "$VSCODE_SETTINGS_DIR" ]]; then
    mv "$VSCODE_SETTINGS_DIR" "$VSCODE_SETTINGS_DIR.$suffix"
    ln -s "$BASEDIR/vscode" "$HOME/Library/Application Support/Code/User"
fi
