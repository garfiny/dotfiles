export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export EDITOR="vim"
# export PATH="$HOME/opt/homebrew/bin:$PATH"
# export PATH="$HOME/Library/Haskell/bin:$PATH"
# export PATH="$HOME/.rbenv/bin:$PATH"
# export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# export JRUBY_OPTS=---2.0

alias ls='ls -G'
alias l='ls -aG'
alias ll='ls -alG'
alias be='bundle exec'

#Docker
if [ `boot2docker status` == 'running' ]; then
    export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
    export DOCKER_CERT_PATH=~/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1
fi


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
