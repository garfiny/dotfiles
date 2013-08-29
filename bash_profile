export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export EDITOR="vim"
export PATH="$HOME/opt/homebrew/bin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

export JRUBY_OPTS=---2.0

alias ls='ls -G'
alias l='ls -aG'
alias ll='ls -alG'
alias be='bundle exec'

#RVM initializer
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#RBENV initializer
eval "$(rbenv init -)"

[[ $TERM != "screen" ]] && `tmux -2`

