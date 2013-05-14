export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export EDITOR="vim"

alias ls='ls -G'
alias ll='ls -alG'
alias be='bundle exec'

alias gs='git status'
alias gc='git commit'
alias gdc='git diff --color'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ $TERM != "screen" ]] && `tmux -2`
