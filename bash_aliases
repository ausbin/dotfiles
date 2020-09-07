alias g='git'
alias gg='nsdo gatech git'
alias se='sudoedit'
alias o='xdg-open &>/dev/null'
alias clipi='xclip -i -selection clipboard'
alias clipo='xclip -o -selection clipboard'
# tmux
alias tl='tmux ls'
alias tn='tmux new-ses -s'
alias ta='tmux attach -t'
# services
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias d='sudo -g docker docker'
alias nobuzz='amixer -c0 sset "Headphone Mic Boost" 10dB'
alias ff='firefox-stable'
# WARNING: very insecure
alias serve="jupyter-notebook --ip '*' --NotebookApp.token='' --NotebookApp.password=''"

# simpler shell prompt
export PS1='$(stat=$? && [[ $stat -gt 0 ]] && echo $stat) \w \$ '

export EDITOR=vim
export GOPATH=~/Documents/proj/go
#export PATH=~/bin:~/bin/jdk/bin:~/bin/go/go/bin:~/.local/bin:~/bin/android/tools/bin:~/bin/npm/bin:"$GOPATH"/bin:~/bin/gradle/bin:"$PATH"
export PATH=~/bin:~/.cargo/bin:~/bin/go/go/bin:~/.local/bin:~/bin/android/tools/bin:~/bin/npm/bin:"$GOPATH"/bin:~/bin/gradle/bin:"$PATH"
# Instead of the (ugly) default, ~/texmf
export TEXMFHOME=~/.texmf
export JAVA_8_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JAVA_9_HOME=~/bin/jdk9
#export JAVA_HOME=$JAVA_9_HOME
alias java8=$JAVA_8_HOME/bin/java

export PATH=~/bin/npm/bin:"$PATH"
export LD_LIBRARY_PATH=~/bin/lib
export LIBRARY_PATH=$LD_LIBRARY_PATH
export C_INCLUDE_PATH=~/bin/include
export PKG_CONFIG_PATH=~/bin/pkgconfig

if [[ $ASCIINEMA_REC -eq 1 ]]; then
    export PS1='$ '
fi

#xhost '+si:localuser:wshark'
