tap "homebrew/bundle"
tap "homebrew/cask-fonts"
brew "atuin"
brew "bat"
brew "direnv"
brew "exa"
brew "fish"
brew "fnm"
brew "gh"
brew "git-delta"
brew "go"
brew "helm"
brew "k9s"
brew "pyenv"
brew "starship"
brew "terraform"
brew "tmux"
brew "zola"
brew "zoxide"
cask "1password"
cask "arc"
cask "cloudflare-warp"
cask "cron"
cask "font-iosevka-term-nerd-font"
cask "font-jetbrains-mono"
cask "notion"
cask "orbstack"
cask "raycast"
cask "rectangle"
cask "visual-studio-code"
cask "vlc"
cask "zoom"

if [ ! -d "/Applications/Slack.app" ]; then
    echo "Installing Slack..."
    brew install --cask slack
else
    echo "Slack is already installed."
fi

if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Installing Docker..."
    brew install --cask docker
else
    echo "Docker is already installed."
fi

vscode "charliermarsh.ruff"
vscode "dbaeumer.vscode-eslint"
vscode "eamodio.gitlens"
vscode "EditorConfig.EditorConfig"
vscode "esbenp.prettier-vscode"
vscode "ms-python.python"
vscode "tombonnike.vscode-status-bar-format-toggle"
vscode "ms-toolsai.jupyter"
vscode "ms-python.vscode-pylance"
vscode "mongodb.mongodb-vscode"
vscode "ms-azuretools.vscode-docker"
vscode "humao.rest-client"
