#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTFILE="/home/hcnt/.zsh/.histfile"
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory
setopt INC_APPEND_HISTORY  
setopt SHARE_HISTORY

alias ls='ls --color=auto'
alias ll='ls -lah'
alias dc='docker-compose'
alias vim="nvim"
alias cat=bat

PROMPT='%T %B%~%b $ '
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
export PATH="$PATH:~/.dotnet/tools"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH="$PATH:~/bin"

alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print }'"
alias gs="git status"
alias gp="git push"
alias gadd="git add -A"
alias gcm="git commit -m"
alias gco="git checkout"

bindkey -v

nitch
