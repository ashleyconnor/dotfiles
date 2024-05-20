# Zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

source ~/.zsh_plugins

# change homebrew path if Apple Silicon
if [[ $(uname -p) == 'arm' ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  # Homebrew fix
  export PATH="$(brew --prefix)/bin:$PATH"
fi
export PATH="/usr/local/sbin:$PATH"
export HOMEBREW_NO_AUTO_UPDATE=1

# functions
source $HOME/.functions.sh

# options
source $HOME/.options.zsh

# completion
source $HOME/.completions.zsh
autoload -Uz compinit && compinit

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# history settings
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# Editor
export EDITOR='nvim'
alias vim=nvim
alias vi=nvim

# Aliases
# Change to the root level directory the current git repository
alias cdg='cd $(git rev-parse --show-toplevel || pwd)'
alias diff=colordiff
alias get='git'
alias top='top -s 5 -o cpu -stats pid,user,command,cpu,rsize,vsize,threads,state'
alias clear="clear && printf '\e[3J'"
alias reset=clear && printf '[3J'
export PATH="/usr/local/share/dotnet:$PATH"
alias unzipall='for z in *.zip; do unzip -o $z; done'
alias grep='rg'
alias cat='bat'

# dotenv
eval "$(direnv hook zsh)"

# Elixir prompt
export ERL_AFLAGS="-kernel shell_history enabled"

# Rust
export PATH=$PATH:/Users/ashleyconnor/.cargo/bin

# Rye Python
source "$HOME/.rye/env"

# Zoxide
eval "$(zoxide init zsh)"

# ASDF Go nag
export ASDF_GOLANG_MOD_VERSION_ENABLED=true
