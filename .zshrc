# Zap plugin manager
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

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

# EVALS
eval "$(starship init zsh)"

