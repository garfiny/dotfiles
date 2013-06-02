export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export EDITOR="vim"
export PATH="$HOME/Library/Haskell/bin:$PATH"

alias ls='ls -G'
alias l='ls -aG'
alias ll='ls -alG'
alias be='bundle exec'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ $TERM != "screen" ]] && `tmux -2`

