#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Uncomment to load profiler
# zmodload zsh/zprof

export HISTFILE="$HOME/.zsh/.histfile"
export HISTSIZE=100000
export SAVEHIST=100000
setopt appendhistory
setopt INC_APPEND_HISTORY  
setopt SHARE_HISTORY

PROMPT='%T %B%~%b $ '

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

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
alias gpl="git pull"
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

# configure nvm
export NVM_DIR="$HOME/.nvm"
nvm() {
  echo "🚨 NVM not loaded! Loading now..."
  unset -f nvm
  export NVM_PREFIX=$(brew --prefix nvm)
  [ -s "$NVM_PREFIX/nvm.sh" ] && . "$NVM_PREFIX/nvm.sh"
  nvm "$@"
}
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# configure nvim
export EDITOR="nvim"

# bun completions
[ -s "/Users/tilmannhars/.bun/_bun" ] && source "/Users/tilmannhars/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# z
eval "$(zoxide init zsh)"

# starship prompt
eval "$(starship init zsh)"

# docker
export PATH="$HOME/.docker/bin:$PATH"

# import certs
if test -f "${HOME}/certs/chain.crt"; then
  export NODE_EXTRA_CA_CERTS="${HOME}/certs/chain.crt"
fi
# add autosuggestionst
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# add rust bin to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# uncomment to profile .zshrc
# zprof
export PATH=/usr/local/anaconda3/bin:$PATH
export PATH=/opt/homebrew/anaconda3/bin:$PATH
