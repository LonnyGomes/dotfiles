export PS1="[\w]\n[\u@\h]> "
set -o vi
export PATH=$PATH:~/bin

#setup git auto completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

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
