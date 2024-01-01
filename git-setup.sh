#!/bin/bash

# Installing Git
echo "Installing Git..."
brew install git

# Set Git configuration
echo "Configuring Git..."
git config --global user.name "vivmagarwal"
git config --global user.email "vivmagarwal@gmail.com"

# Check if VS Code is installed before setting it as the default Git editor
if command -v code >/dev/null; then
    git config --global core.editor "code --wait"
else
    echo "VS Code not found. Skipping setting VS Code as the default Git editor."
fi

