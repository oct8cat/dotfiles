[[ $- != *i* ]] && return

# Prompt
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

# Completion
    BASH_COMPLETION=/etc/bash_completion
    [ -r $BASH_COMPLETION ] && . $BASH_COMPLETION

# Exports
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
    export EDITOR=vim
    export XDG_CONFIG_HOME=~/.config
    export PATH=~/.local/bin:$PATH

# Aliases

    # Misc
    alias 'cl'='clear'
    alias 'ls'='ls --color=auto'
    alias 'l'='ls -l'
    alias 'la'='ls -la'
    alias 'lar'='ls -laR'
    alias 'getvundle'='mkdir -p ~/.vim/bundle && git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim'
    alias 'fixkb'='setxkbmap -layout "us,ru" -option "grp:alt_shift_toggle"'

    # Wacom
    alias 'wactouchon'='xsetwacom --set `xsetwacom list | grep touch | grep -oP id:\ [0-9]\+ | grep -oP [0-9]\+` Touch on'
    alias 'wactouchoff'='xsetwacom --set `xsetwacom list | grep touch | grep -oP id:\ [0-9]\+ | grep -oP [0-9]\+` Touch off'

    # Mounts
    alias 'mountn2o'='mkdir -p ~/NitrousIO && sshfs action@euw1.actionbox.io:workspace ~/NitrousIO -p 17355'
    alias 'umountn2o'='fusermount -u ~/NitrousIO'

    # Audio
    alias 'snd_default'='rm ~/.asoundrc'
    alias 'snd_headset'='echo \
        pcm.\!default { type hw\; card $(aplay -l | grep HEADSET | grep -oP card\\s+\\d+: | grep -oP \\d+) } \
        ctl.\!default { type hw\; card $(aplay -l | grep HEADSET | grep -oP card\\s+\\d+: | grep -oP \\d+) } \
        > ~/.asoundrc'
    # Git
    alias 'gs'='git status -bs'
    alias 'gl'='git log --oneline'
    alias 'gpr'='git pull --rebase'
    alias 'gd'='git diff'
    alias 'gdc'='git diff --cached'
    alias 'gc'='git commit'
    alias 'gca'='git commit --amend'


# Local profile
    [ -f ~/.profile.local ] && . ~/.profile.local

# NVM
    export NVM_DIR="/home/oct8cat/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
