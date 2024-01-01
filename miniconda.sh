#!/bin/bash

# Checking if Miniconda is already installed
if [ ! -d "$HOME/miniconda3" ]; then
    echo "Installing Miniconda..."
    curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
    chmod +x Miniconda3-latest-MacOSX-arm64.sh
    ./Miniconda3-latest-MacOSX-arm64.sh -b
    echo "Miniconda installed."
else
    echo "Miniconda is already installed."
fi

# Initialize Conda for bash
source "$HOME/miniconda3/bin/conda" shell.bash hook
