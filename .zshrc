# Plugins
plugins=(git)

# Zsh config
export ZSH=/Users/ilja/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source /Users/ilja/.bash_profile

# Prompt
PROMPT='$fg[yellow]%1d $(git_prompt_info) $reset_color→ '
ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"

function git_prompt_info() {
  if ! (git symbolic-ref HEAD >/dev/null 2>&1); then
    return
  fi
  if (git check-ignore . >/dev/null 2>&1); then
    return
  fi
  if [ "$PWD" = "$HOME" ]; then
    return
  fi
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Git aliases
alias gf='git fetch'
alias gs='git status'
alias gp='git push'
alias gpr='git pull -r'
alias gri='git rebase -i'
alias grc='git rebase --continue'
