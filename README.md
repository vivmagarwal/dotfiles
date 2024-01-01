# Dotfiles for ML Setup on MacOS M1

This repository contains my personal dotfiles, configured for a robust MERN stack and Machine Learning development environment, optimized for the MacBook Pro M1 chip.

## Disclaimer 
This dotfile repository is provided "as is", without warranty of any kind. It is tailored for my personal setup and extensively tested on my machine. While you are welcome to use these dotfiles as a starting point or for inspiration, please note that their functionality on different systems or configurations cannot be guaranteed. Essentially, it works on my machine :) Feel free to adapt and modify these configurations to suit your own environment and requirements. 

## Credits
A lot of inspiration has been taken from: https://github.com/skippednote/dotfiles

## Contents

- `Brewfile`: Homebrew packages and casks, including essential tools and VS Code extensions.
- `config.fish`: Fish shell configuration with custom paths, aliases, and initializations.
- `dataIntelligents.terminal`: Custom terminal settings for macOS Terminal.
- `git-setup.sh`: Script for installing and configuring Git, and setting VS Code as the default editor.
- `Makefile`: Orchestrates the setup process, linking different scripts for a comprehensive environment setup.
- `miniconda.sh`: Script for installing Miniconda, crucial for Python and ML environments.
- `ml-setup.sh`: Sets up a Conda environment and installs a suite of Machine Learning and Data Science libraries optimized for the M1 chip.
- `setup.sh`: The main script to set up the entire development environment.

## Installation

### Prerequisites

- Command line tools must be installed (`xcode-select --install`).
- Download and unZip this repository into your home directory or any preferred location


### Manual Configurations

- **Git Credentials**: Update `git-setup.sh` with your name and email address before running the setup.
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "your_email@example.com"
  ```
- **Fish Shell**: Customize `config.fish` for personal aliases and path settings.

### Automated Setup

1. **Navigate to the dotfiles directory:**
   ```bash
   cd ~/dotfiles
   ```

2. **Run the setup script:**
   ```bash
   ./setup.sh
   ```

This script will:
- Check and install Homebrew.
- Install software defined in the `Brewfile`.
- Set up the Machine Learning environment.
- Apply terminal and Fish shell configurations.
- Configure Git with global settings (update the script with your information).


### Post-Installation

- Restart your terminal or computer to apply all changes.
- Verify the installation of key software and libraries.
- Customize further as per your requirements.
- Enable Settings Sync in Visual Studio Code
- You may need to manually set up the dataIntelligents terminal profile to ensure that your Terminal reflects the custom settings:

### Machine Learning Development
- within fish shell just run `mlenv` (alias of `conda activate mlenv`)

## Customization

- **Brewfile**: Add or remove Homebrew packages and casks as needed.
- **config.fish**: Modify Fish shell settings to suit your preferences.
- **dataIntelligents.terminal**: Adjust terminal settings for your preferred aesthetics and functionality.

## Contribution

Fork this repository to customize the dotfiles to fit your development environment. Suggestions and improvements are welcome through pull requests.

## License

This project is open-source and available under the [MIT License](LICENSE).

