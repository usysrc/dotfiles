#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTFILE="~/.histfile"
HISTSIZE=1000
SAVEHIST=1000

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

nitch
