#--------------------------------------
# bash
#--------------------------------------
set -o vi 

. ~/.git-completion.bash
. ~/.git-prompt.sh
. /Users/emcgough/.rvm/scripts/rvm

#--------------------------------------
# ENV
#--------------------------------------
export PATH
PATH=/usr/local/bin     # brew
PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:/usr/local/heroku/bin
PATH=$PATH:/bin:/usr/sbin:/usr/bin


#--------------------------------------
# PROMPT 
#--------------------------------------
export PS1="\033]0;$(uname -n)\007$(whoami)@$(uname -n):"'$(/bin/pwd)
bash $(__git_ps1 "(%s)") % '

#--------------------------------------
# alias
#--------------------------------------
alias ls='ls -G'
