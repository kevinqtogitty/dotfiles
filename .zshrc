# Load plugins
source ~/.zsh/plugins.zsh

# Load and initialise completion system
autoload -Uz compinit
compinit

# Path
export PATH="$HOME/.local/bin:$PATH"

# GIT shortcuts
alias ga='git add'
alias gc='git commit'
alias gaa='git add .'
alias gcb='git checkout -b'
alias gunstaged='git diff --name-only'
alias gstaged='git diff --cached --name-only'
alias gpo='git push origin'
alias gpr='git pull --rebase'
alias gsu='git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD)"'

# Nix Rebuild commands
alias mac-rebuild='sudo /run/current-system/sw/bin/darwin-rebuild switch --flake ~/nix-config#Kevins-MacBook-Air-2'

# EVALS
eval "$(starship init zsh)"

