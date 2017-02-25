export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export EDITOR="vim"
# export PATH="$HOME/opt/homebrew/bin:$PATH"
# export PATH="$HOME/Library/Haskell/bin:$PATH"
# export PATH="$HOME/.rbenv/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
export JAVA_HOME=`/usr/libexec/java_home`

# export M2_HOME="/Users/shuo.zhao/opt/apache-maven-3.3.3"
# export PATH="$M2_HOME/bin:$PATH"
# export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=512m"
#
# export SPARK_HOME="/Users/shuo.zhao/opt/spark"
# export PATH="$SPARK_HOME/bin:$PATH"
#
# export GRADLE_HOME="~/opt/gradle-3.3"
# export PATH="$PATH:~/opt/gradle-3.3/bin"

export PATH="/usr/local/sbin:/Users/shuo.zhao/opt/scala/bin:$PATH"

alias ls='ls -G'
alias l='ls -aG'
alias ll='ls -alG'
alias be='bundle exec'

#RVM initializer
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
RUBIES+=(~/.rvm/rubies/*)

#RBENV initializer
eval "$(rbenv init -)"

#chruby here
# source /usr/local/opt/chruby/share/chruby/chruby.sh
# source ~/.rvm/scripts/extras/chruby.sh
# source /usr/local/opt/chruby/share/chruby/auto.sh

[[ $TERM != "screen" ]] && `tmux -2`

set -o ignoreeof

[ -n "$TMUX" ] && export TERM=screen-256color
