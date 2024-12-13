# For **/*.cpp
#     ^^
shopt -s globstar

alias g='git'
alias gg='nsdo gatech git'
alias se='sudoedit'
alias o='xdg-open &>/dev/null'
alias pbcopy='wl-copy'
alias pbpaste='wl-paste'
#alias pbcopy='xclip -i -selection clipboard'
#alias pbpaste='xclip -o -selection clipboard'
# tmux
alias tl='tmux ls'
alias tn='tmux new-ses -s'
alias ta='tmux attach -t'
alias tnsl='ls -1 ~/.tmux/'
tns() {
    local name=$1
    tmux start \; source-file ~/.tmux/"$name"
}

# services
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias d='sudo -g docker docker'
alias nobuzz='amixer -c0 sset "Headphone Mic Boost" 10dB'
alias ff='firefox-stable'
# WARNING: very insecure
#alias serve="jupyter-notebook --ip '*' --NotebookApp.token='' --NotebookApp.password=''"
#alias grad='cd ~/Documents/school/gatech/grad'
alias piv='pip install -v .'
alias tpiv='QWERTY_BUILD_TESTS=true pip install -v .'
alias mj='make -j8'
alias tmj='time make -j8'
alias nsg='nsdo gatech git'
alias mopier='lpr -P mopiers -U aadams80'
alias lsm='findmnt --df --type notmpfs,nofuse.portal,nodevtmpfs'

# 2110
alias circuitsim='java -jar ~/Documents/school/gatech/grad/cs2110/CircuitSim2110/CS2110-CircuitSim.jar'
alias lc3tools='~/Documents/school/gatech/grad/cs2110/lc3tools/src/gui/build/linux-unpacked/lc3tools'

HISTSIZE=10000
HISTFILESIZE=20000

cm() {
    {
        printf 'cm '
        printf '%s ' "$@"
        printf '\n'
    } >CMakeCmd.txt
    cmake "$@"
}

# simpler shell prompt
export PS1='$(stat=$? && [[ $stat -gt 0 ]] && echo $stat) \w \$ '

export EDITOR=vim
export GOPATH=~/Documents/proj/go
#export PATH=~/bin:~/bin/jdk/bin:~/bin/go/go/bin:~/.local/bin:~/bin/android/tools/bin:~/bin/npm/bin:"$GOPATH"/bin:~/bin/gradle/bin:"$PATH"
export PATH=~/bin:~/.cargo/bin:~/bin/go/go/bin:~/.local/bin:~/bin/android/tools/bin:~/bin/npm/bin:"$GOPATH"/bin:~/bin/gradle/bin:~/bin/texlive20240524/bin/x86_64-linux/:/usr/local/aideqc/llvm/bin:~/.local/share/gem/ruby/3.1.0/bin:"$PATH"
export CDPATH=.:~/Documents/school/gatech/grad
# Instead of the (ugly) default, ~/texmf
#export TEXMFHOME=~/.texmf
export JAVA_8_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JAVA_9_HOME=~/bin/jdk9
#export JAVA_HOME=$JAVA_9_HOME
alias java8=$JAVA_8_HOME/bin/java
# npm is an awesome ecosystem
export PYTHON=python3

read -r G3_BUCKET <~/.g3-bucket
export G3_BUCKET

read -r MAPBOX_ACCESS_TOKEN <~/.mapboxtoken
export MAPBOX_ACCESS_TOKEN

export PATH=~/bin/npm/bin:~/bin/ghc/bin:~/.cabal/bin:"$PATH"
export LD_LIBRARY_PATH=~/bin/lib
export C_INCLUDE_PATH=~/bin/include
export PKG_CONFIG_PATH=~/bin/pkgconfig

export LLVM_REPO_PATH=~/Documents/proj/llvm-project

# 2110 degeneracy
export LC3TOOLS_HOME=~/Documents/school/gatech/grad/cs2110/lc3tools
export LC3ASM_HOME=~/Documents/school/gatech/grad/cs2110/lc3-assembler
alias lc3as='java -cp $LC3ASM_HOME LC3asm'
alias lc3ld='java -cp $LC3ASM_HOME LC3link'
alias lc3conv='java -cp $LC3ASM_HOME ObjToLC3Tools'
alias lc3disas='java -cp $LC3ASM_HOME LC3disasm'

#eval $(opam env --switch=default)

# Looks less creepy than "cute"
babby() {
    export PS1='$ '
}

buzz() {
    export PATH=$PATH:~/bin/buzzsaw/bin
}

alex() {
    export PATH=$PATH:~/.xacc/bin
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.xacc/lib
    export LIBRARY_PATH=$LD_LIBRARY_PATH
    export CPLUS_INCLUDE_PATH=~/.xacc/include/
    export PYTHONPATH=~/.xacc
}

santosh() {
    # Can be empty
    local version=$1
    export MLIR_DIR=~/bin/llvm${version}/lib/cmake/mlir/
    export PATH=~/bin/llvm${version}/bin:$PATH
    export C_INCLUDE_PATH=~/bin/llvm${version}/include:$C_INCLUDE_PATH
    export CPLUS_INCLUDE_PATH=~/bin/llvm${version}/include:$CPLUS_INCLUDE_PATH
    export LD_LIBRARY_PATH=~/bin/llvm${version}/lib:$LD_LIBRARY_PATH
}

# Google test
gcivil() {
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/bin/gtest/lib
    export LIBRARY_PATH=$LD_LIBRARY_PATH
    export CPLUS_INCLUDE_PATH=~/bin/gtest
    export PKG_CONFIG_PATH=~/bin/gtest/lib/pkgconfig
}

microshaft() {
    export DOTNET_ROOT=~/bin/dotnet
    export PATH=$DOTNET_ROOT:$DOTNET_ROOT/tools:$HOME/bin/pwsh:$PATH
}

guido() {
    . ~/.venv/bin/activate
}

if [[ $ASCIINEMA_REC -eq 1 ]]; then
    export PS1='$ '
fi

#xhost '+si:localuser:wshark'
