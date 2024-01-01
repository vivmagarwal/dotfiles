#!/bin/bash

# Define VSCode user settings directory based on OS
if [ "$(uname)" == "Darwin" ]; then
    VSCODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    VSCODE_SETTINGS_DIR="$HOME/.config/Code/User"
else
    echo "Unsupported OS."
    exit 1
fi

# Create a directory to store VSCode settings in the current working directory
EXPORT_DIR="./vscode-settings-export"
mkdir -p "$EXPORT_DIR"

# Copy settings.json, keybindings.json and snippets folder
cp "$VSCODE_SETTINGS_DIR/settings.json" "$EXPORT_DIR/settings.json"
cp "$VSCODE_SETTINGS_DIR/keybindings.json" "$EXPORT_DIR/keybindings.json"
cp -r "$VSCODE_SETTINGS_DIR/snippets" "$EXPORT_DIR/snippets"

# Export the list of installed extensions
code --list-extensions > "$EXPORT_DIR/extensions-list.txt"

echo "VSCode settings exported to $EXPORT_DIR"
