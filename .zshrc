autoload -Uz compinit && compinit
# Set up fzf key bindings and fuzz completion
source <(fzf --zsh)

# Load and initialise completion system
autoload -Uz compinit
compinit

# Path
export PATH="$HOME/.local/bin:$PATH"

# GIT shortcuts
alias ga='git add'
alias gc='gitmoji --commit'
alias gaa='git add .'
alias gcb='git checkout -b'
alias gunstaged='git diff --name-only'
alias gstaged='git diff --cached --name-only'
alias gpo='git push origin'
alias gpr='git pull --rebase'
alias gsu='git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD)"'

# Nix Rebuild commands
alias mac-rebuild='sudo /run/current-system/sw/bin/darwin-rebuild switch --flake ~/nix-config#Kevins-MacBook-Air-2'

# FZF commands
alias fzf='fzf --preview="bat --color=always {}"'
alias vimf='vim $(fzf -m --preview="bat --color=always {}")'

# Editor aliases
alias zed='zeditor'
alias zedf='zed $(fzf -m --preview="bat --color=always {}")'
alias pycharmf='pycharm $(fzf -m --preview="bat --color=always {}")'

# EVALS
eval "$(starship init zsh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Source Klaviyo configuration files
for config_file in ~/.config/klaviyo.d/*.sh; do
  . "$config_file"
done
