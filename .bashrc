#--------------------------------------
# BASH
#--------------------------------------
set -o vi 

#--------------------------------------
# SOURCE
#--------------------------------------
. $HOME/.git-completion.bash
. $HOME/.git-prompt.sh

if [ -s "$HOME/.rvm/scripts/rvm" ]; then
  . "$HOME/.rvm/scripts/rvm"
elif [ -s "/usr/local/rvm/scripts/rvm" ]; then
  . "/usr/local/rvm/scripts/rvm"
fi

#--------------------------------------
# ENV
#--------------------------------------
export PATH
PATH=/usr/local/bin     # brew
PATH=$PATH:$HOME/.rvm/bin
PATH=/usr/local/rvm/bin
PATH=$PATH:/usr/local/heroku/bin
PATH=$PATH:$HOME/bin:$HOME/scripts
PATH=$PATH:/bin:/usr/sbin:/usr/bin

#--------------------------------------
# PROMPT 
#--------------------------------------
export PS1="\033]0;$(uname -n)\007$(whoami)@$(uname -n):"'$(/bin/pwd)
bash $(__git_ps1 "(%s)") % '

#--------------------------------------
# alias
#--------------------------------------
alias ls='ls -GF'
