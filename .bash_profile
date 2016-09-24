set -o vi
export PATH=~/bin:/usr/local/bin:$PATH

#load any local bash configurations if they exist
if [ -f ~/.bash_profile.local ]; then
    . ~/.bash_profile.local
fi

#setup git auto completion
if [ -f `xcode-select -p`/usr/share/git-core/git-completion.bash ]; then
    . `xcode-select -p`/usr/share/git-core/git-completion.bash
fi

#add git branch to prompt
source `xcode-select -p`/usr/share/git-core/git-prompt.sh

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
export TERM=xterm-color
#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'
alias startMongo="mongod --config /usr/local/etc/mongod.conf&"
alias chrome_debug="open -a Google\ Chrome --args --disable-web-security"
alias nw='/Applications/node-webkit.app/Contents/MacOS/node-webkit' #node-webkit
alias brackets='open -a "Brackets"'
alias s3='aws s3'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### GDAL executables
export PATH="/Library/Frameworks/GDAL.framework/Programs:$PATH"

### node.js local installs path
export PATH="/usr/local/share/npm/bin:$PATH"
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

### set up android SDK
export PATH=$PATH:~/code/Android/sdks/adt-current/tools:~/code/Android/sdks/adt-current/platform-tools
