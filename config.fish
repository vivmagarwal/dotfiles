# set path
set -g fish_greeting
set -g fish_user_paths /opt/homebrew/bin $HOME/.cargo/bin $HOME/.local/bin $fish_user_paths
set -Ux GOPATH $HOME/.go
set -gx DIRENV_LOG_FORMAT ""
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

# initializations
starship init fish | source
direnv hook fish | source
fnm env | source
zoxide init fish | source
atuin init fish | source
pyenv init - | source

# aliases
alias l="exa -lh --git --icons"
alias a="exa -lha --git --icons"
alias cd='z'
alias v='vim'
alias c='clear'
alias o="open"
alias ls="exa --git --icons"
alias tree="ls --tree --icons"
alias cat="bat"
alias d="cd ~/code/personal/dataIntelligents"
alias genkeys='ssh-keygen -t ed25519 -C "vivmagarwal@gmail.com" '
alias copykeys='cat ~/.ssh/id_ed25519.pub | pbcopy'
alias g="git"
alias k="kubectl"
alias tor="npx webtorrent-cli "
alias activatepyenv="source ./.venv/bin/activate.fish"

# functions
function mcd
    mkdir $argv[1]
    cd $argv[1]
end

function cdr
    cd (git rev-parse --show-toplevel)
end

# function mlenv -d "Generate python virtual environment and upgrade pip"
#     python3 -m venv .mlenv
#     source .mlenv/bin/activate.fish
#     source ~/miniconda3/etc/fish/conf.d/conda.fish
#     pip install -U pip
# end

function mlenv -d "Generate python virtual environment and upgrade pip"
    if conda env list | grep -q mlenv
        conda activate mlenv
        echo "Activated existing mlenv environment."
    else
        conda create -n mlenv python=3.8 -y
        conda activate mlenv
        pip install -U pip
        echo "Created and activated new mlenv environment."
    end
end

source ~/miniconda3/etc/fish/conf.d/conda.fish

# Keybindings
bind \cr _atuin_search
bind -M insert \cr _atuin_search

