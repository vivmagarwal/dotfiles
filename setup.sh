#!/bin/bash

# Check current directory
if [ $(basename "$PWD") != "dotfiles" ]; then
    echo "Please run this script from the dotfiles directory."
    exit 1
fi

# Installing Homebrew
echo "Checking for Homebrew..."
which -s brew
if [[ $? != 0 ]]; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Execute Makefile for setup
make setup

# Initialize fnm and conda for Bash
echo 'eval "$(fnm env)"' >> ~/.bashrc
echo 'source ~/miniconda3/etc/profile.d/conda.sh' >> ~/.bashrc
echo 'eval "$(fnm env)"' >> ~/.bash_profile
echo 'source ~/miniconda3/etc/profile.d/conda.sh' >> ~/.bash_profile

# Initialize fnm and conda for Zsh
echo 'eval "$(fnm env)"' >> ~/.zshrc
echo 'source ~/miniconda3/etc/profile.d/conda.sh' >> ~/.zshrc

echo "Please remember to enable Settings Sync in Visual Studio Code manually."
echo "Use 'Code -> Preferences -> Turn on Preferences Sync...' to sync your settings, extensions, and more."
echo "Setup completed."
