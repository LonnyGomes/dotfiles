set -o vi
export PATH=$PATH:~/bin

#setup git auto completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#add git branch to prompt
. ~/.git-prompt.bash

#prompted colors
BLUE="\[\033[1;34m\]"
WHITE="\[\033[1;37m\]"
LT_CYAN="\[\033[1;36m\]"
LT_RED="\[\033[1;31m\]"
export PS1="$BLUE[$WHITE\w$BLUE]$LT_RED\$(__git_ps1)\n$BLUE[$WHITE\u$LT_CYAN@$WHITE\h$BLUE]$LT_CYAN>$WHITE "

#enables color in the terminal bash shell export
CLICOLOR=1
#sets up the color scheme for list export
#LSCOLORS=gxfxcxdxbxegedabagacad
export LSCOLORS=GxFxCxDxBxegedabagaced
#sets up the prompt color (currently a green similar to linux terminal)
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
#enables color for iTerm
#export TERM=xterm-color
#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'
