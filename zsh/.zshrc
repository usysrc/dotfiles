#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTFILE=".zsh/.histfile"
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory
setopt INC_APPEND_HISTORY  
setopt SHARE_HISTORY

PROMPT='%T %B%~%b $ '

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH="$PATH:$HOME/bin"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

alias ls='ls --color=auto'
alias ll='ls -lah'
alias dc='docker-compose'
alias vim="nvim"
alias v="nvim"
alias cat=bat
alias gs="git status"
alias gp="git push"
alias gadd="git add -A"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gds="git diff --staged"

# arch specific
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print }'"

bindkey -v
set -o vi
bindkey "^R" history-incremental-search-backward


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/tilmannhars/.bun/_bun" ] && source "/Users/tilmannhars/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# z
 . /opt/homebrew/etc/profile.d/z.sh

# starship prompt
eval "$(starship init zsh)"
