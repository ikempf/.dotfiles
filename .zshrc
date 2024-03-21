# Path
PATH=$PATH:/Users/iljakempf/.cargo/bin

# Plugins
plugins=(git)

# Zsh config
export ZSH=/Users/iljakempf/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
if [ -f /$HOME/.bash_profile ]; then
    source $HOME/.bash_profile
fi

# Prompt
green="%{$fg[green]%}"
red="%{$fg[red]%}"
reset="%{$reset_color%}"

PROMPT='%{$fg[yellow]%}%1d$(custom_git_prompt_info)$reset → '
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset"
ZSH_THEME_GIT_PROMPT_DIRTY=$red
ZSH_THEME_GIT_PROMPT_CLEAN=$green
ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX="$green ▲"
ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX=$reset
ZSH_THEME_GIT_COMMITS_BEHIND_PREFIX="${red} ▼"
ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX=$reset

function custom_git_prompt_info() {
  if ! (git symbolic-ref HEAD >/dev/null 2>&1); then
    return
  fi
  if (git check-ignore . >/dev/null 2>&1); then
    return
  fi
  if [ "$PWD" = "$HOME" ]; then
    return
  fi
  echo " $(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$(git_prompt_status)$(git_commits_ahead)$(git_commits_behind)$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

#export PATH="/usr/local/bin:${PATH}"
#export LANG=en_US

# Docker
alias dockerContainerRemove='docker rm -f $(docker ps -a -q)'
alias dockerImageRemove='docker rmi -f $(docker images -q)'
alias dockerVolumeRemove='docker volume prune -f'
alias dockerRemove='dockerContainerRemove && dockerVolumeRemove'

# Crap SBT
alias sbtClean='rm -rf target;rm -rf project/target; rm -rf project/project/target'
alias ssbt='(export DEV=true; export SBT_TPOLECAT_DEV=true;export JAVA_OPTS="-XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/tmp/";sbt)'

# Java
alias J19='export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-19.jdk/Contents/Home'
alias J17='export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home'
alias J11='export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home'
J17

# Skhd & Yabai
skhd --start-service
yabai --start-service

# JMeter on M1
alias runjmeter='JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-21.jdk/Contents/Home/ exec /opt/homebrew/Cellar/jmeter/5.6.2/libexec/bin/jmeter'

# Zoxide
export _ZO_DATA_DIR=~/.zoxide
eval "$(zoxide init --cmd cd zsh)"
