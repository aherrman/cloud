alias vscl='/cygdrive/c/Program\ Files/Microsoft\ Visual\ Studio\ .NET\ 2003/Vc7/Bin/cl'
alias cl='clear;ls --color'
alias ensc='enscript -2GrE -M Letter --color=true -T 2'
alias enscJS='enscript -G -Ejavascript -M Letter --color=true --font=Courier7 -T 2'
alias gvim='SHELL=$COMSPEC gvim'
alias ifconfig=ipconfig
alias ls='ls --color'
#alias runant='rm /mnt/windows/WINDOWS/system32/AppShare*.dll ; ./ant.bat -Dconfig=aherrman'
alias runant='/mnt/windows/bin/runant.sh'
alias setTitle='perl ~/bin/setTitle.pl'
alias ussh='ssh -X aherrman@unix.andrew.cmu.edu'
alias gssh='ssh -X -l aherrman@ANDREW.CMU.EDU weh5336-g.intro.cs.cmu.edu'
alias xterm='xterm -fg white -bg black -e zsh'
alias doxygen='/mnt/windows/Program\ Files/doxygen/bin/doxygen'
alias intToHex='java -jar "C:\\Documents and Settings\\aherrman\\Desktop\\code\\intToHex\\dist\\intToHex.jar"'
alias flash='/mnt/windows/Program\ Files/Macromedia/Flash\ 8/Flash.exe'
alias grepln='grep -n'
alias ll='ls --color=never -1'
alias js='/mnt/windows/bin/js.sh'
alias grep='grep --color'

#export PS1='%{[0;32m%}%n@%m%{[0;m%} %{[0;33m%}%~%{[0;m%}
#$ '
export PS1='%{[0;33m%}%~%{[0;m%}
%{[0;32m%}$%{[0;m%} '

export PATH=$PATH:/cygdrive/c/Program\ Files/Vim/vim72/:/cygdrive/m/bin/:/cygdrive/m/bin/PsTools/:/mnt/windows/Java/jdk1.6.0/bin

setopt AUTO_CD
setopt CORRECT
setopt AUTO_PUSHD
setopt AUTO_NAME_DIRS
setopt PUSHD_TO_HOME
setopt SHARE_HISTORY
