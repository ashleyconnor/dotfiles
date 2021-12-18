# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
source ~/.zsh_plugins

# asdf
. $(brew --prefix asdf)/asdf.sh

# functions
source $HOME/.functions.sh

# completion
autoload -U compinit
compinit

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# Enable extended globbing
setopt extendedglob
# Allow [ or ] whereever you want
unsetopt nomatch

# Editor
export EDITOR='nvim'
alias vim=nvim
alias vi=nvim

# Homebrew fix
export PATH="$(brew --prefix)/bin:/usr/local/sbin:$PATH"

# Aliases
alias b='bundle exec'
# Change to the root level directory the current git repository
alias cdg='cd $(git rev-parse --show-toplevel || pwd)'
alias diff=colordiff
alias ls='ls -hFG'
alias l='ls'
alias la='ls -la'
alias ll='ls -l'
alias top='top -s 5 -o cpu -stats pid,user,command,cpu,rsize,vsize,threads,state'
alias clear="clear && printf '\e[3J'"
alias reset=clear && printf '[3J'
alias unzipall='for z in *.zip; do unzip -o $z; done'

# direnv
eval "$(direnv hook zsh)"

# elixir prompt
export ERL_AFLAGS="-kernel shell_history enabled"

# rust
export PATH=$PATH:/Users/ashleyconnor/.cargo/bin

# keybindings
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^f" forward-char
bindkey "^b" backward-char
bindkey "^k" kill-line
bindkey "^d" delete-char
