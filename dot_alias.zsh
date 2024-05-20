# Change to the root level directory the current git repository
alias cdg='cd $(git rev-parse --show-toplevel || pwd)'
alias diff=colordiff
alias get='git'
alias ls='ls -hFG'
alias l='ls'
alias la='ls -la'
alias ll='ls -l'
alias top='top -s 5 -o cpu -stats pid,user,command,cpu,rsize,vsize,threads,state'
alias clear="clear && printf '\e[3J'"
alias reset=clear && printf '[3J'
alias unzipall='for z in *.zip; do unzip -o $z; done'
alias grep='rg'
alias cat='bat'
## exa
alias ls="exa" # ls
alias ll='exa -lbF --git' # list, size, type, git
alias llm='exa -lbGd --git --sort=modified' # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale' # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list
alias lS='exa -1' # one column, just names
alias lt='exa --tree --level=2' # tree
alias lta='exa -a --tree --level=2' # tree
