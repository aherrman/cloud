alias cl='clear;ls -G'
alias ls='ls -G'
alias setTitle='perl ~/bin/setTitle.pl'
alias grepln='grep -n'
alias grep='grep --color'

#export PS1='%{[0;32m%}%n@%m%{[0;m%} %{[0;33m%}%~%{[0;m%}
#$ '
export PS1='%{[0;33m%}%~%{[0;m%}
%{[0;32m%}$%{[0;m%} '

setopt AUTO_CD
setopt CORRECT
setopt AUTO_PUSHD
setopt AUTO_NAME_DIRS
setopt PUSHD_TO_HOME
setopt SHARE_HISTORY
