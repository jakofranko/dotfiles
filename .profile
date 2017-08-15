export PATH=./node_modules/.bin:$PATH:/usr/local/bin:/Library/Oracle/instantclient_11_2:/usr/local/texbin
export ORACLE_HOME=/Library/Oracle 
export DYLD_LIBRARY_PATH=/Library/Oracle/instantclient_11_2 
export TNS_ADMIN=/Library/Oracle/instantclient_11_2/network/admin 
export CLASSPATH=$CLASSPATH:$ORACLE_HOME
export JAVA_HOME=$(/usr/libexec/java_home)
##
# Your previous /Users/jfranklin/.profile file was backed up as /Users/jfranklin/.profile.macports-saved_2014-03-26_at_16:37:32
##

# Custom aliases
alias ll="ls -lah"
alias la="ls -a"
alias gtsites="cd ~/Sites"
alias gtnotes="cd ~/Library/Application\ Support/Notational\ Data"
alias ls='ls -GFh'
alias sshremote="ssh jfranklin@192.169.154.50"
alias sshserver="ssh jfranklin@192.168.154.150 -L 8081:localhost:80 -N"
alias ops8="ssh jfranklin@ops8.phx1.tnltd.net"
alias gitprunemerged='git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'
alias listgames="awk -F '=| ' '/# Games/{f=1;next} /# \/Games/{f=0} f, /alias/{print \$2}' ~/.profile"
alias flushdns="sudo killall -HUP mDNSResponder"

# Games
alias playia="~/Games/ia-develop/target/ia"
alias cogmind="cd ~/Games/COGMIND; wine COGMIND.exe"
alias crown="cd ~/Games/crownOfTheForest; wine Crown.exe"
alias domination="cd ~/Games/domination; java -jar domination.jar"
alias dominationEmpires="cd ~/Games/dominationEmpires; java -jar dominationEmpires.jar"
alias drillworms="cd ~/Games/drillworms; wine Drillworms.exe"
alias hellspace="cd ~/Games/hellspace; java -jar hellspace.jar"
alias iryrwarosh="cd ~/Games/iryrwarosh; java -jar iryrwarosh.jar"
alias jelly="cd ~/Games/jelly; wine jelly.exe"
alias maninthemirror="cd ~/Games/manInTheMirror/data; java -jar mirror.jar"
alias nightfall="cd ~/Games/nightfall; java -jar nightfall.jar"
alias rogueai="cd ~/Games/rogueAI; java -jar RogueAI.jar"
alias rogueCityScavenger="cd ~/Games/rogueCityScavenger; java -jar RogueCityScavenger.jar"
alias aliensRL="cd ~/Games/aliensRL/; ./abrl"
alias frozendepths="cd ~/Games/frozen_depths; ./fdepths"
alias playURR="cd ~/Games/ultima_ratio_regum; wine Ultima\ Ratio\ Regum\ v070b.exe"
alias demonhunt="cd ~/Games/demon_hunt; open demonhuntRL.jar"
alias viciousorcs="cd /Users/jfranklin/Games/vicious_orcs/windows; wine orc.exe"
alias gtmame="cd /usr/local/Cellar/mame/0.157/bin/"
alias dfhack="/usr/local/Cellar/dwarf-fortress/0.42.06/libexec/dfhack"
alias keeperRL="~/Games/keeperRL_alpha19_free/keeper_mac.command"
# /Games

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
