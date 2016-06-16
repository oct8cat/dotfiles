GIT_PROMPT=/usr/share/git/completion/git-prompt.sh
if [ -f $GIT_PROMPT ]; then
    . $GIT_PROMPT
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWUNTRACKEDFILES=true
    PS1='\W$(__git_ps1 " (%s)") $ '
else
    PS1='\W $ '
fi
PS2='> '
PS3='> '
PS4='+ '
