export PATH=./node_modules/.bin:$PATH:/usr/local/bin:/Library/Oracle/instantclient_11_2:/usr/local/texbin
export ORACLE_HOME=/Library/Oracle
export DYLD_LIBRARY_PATH=/Library/Oracle/instantclient_11_2
export TNS_ADMIN=/Library/Oracle/instantclient_11_2/network/admin
export CLASSPATH=$CLASSPATH:$ORACLE_HOME
export JAVA_HOME=$(/usr/libexec/java_home)

# Custom aliases
alias ll="ls -lah"
alias la="ls -a"
alias gtsites="cd ~/Sites"
alias gtnotes="cd ~/Library/Application\ Support/Notational\ Data"
alias ls='ls -GFh'
alias flushdns="sudo killall -HUP mDNSResponder"

#Rearanges the initial prompt and colorizes it. It also colorizes the rest of the terminal
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad
# for bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
# For Homebrew's bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
launchctl setenv PATH $PATH
#export DEV_MODE="dev"
