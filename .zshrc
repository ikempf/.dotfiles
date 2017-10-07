source /Users/ilja/.bash_profile

# Zsh config
export ZSH=/Users/ilja/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Zsh plugins
plugins=(git)

# Git aliases
alias gf='git fetch'
alias gs='git status'
alias gpr='git pull -r'
alias gpu='git push'
