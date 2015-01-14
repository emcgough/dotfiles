#--------------------------------------
# BASH
#--------------------------------------
set -o vi

#--------------------------------------
# SOURCE
#--------------------------------------

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

#--------------------------------------
# PROMPT
#--------------------------------------
export PS1="\033]0;$(hostname -s)\007$(whoami)@$(hostname -s):"'$(pwd)
bash $(__git_ps1 "(%s)") % '

#--------------------------------------
# alias
#--------------------------------------
alias ls='ls -GF'
