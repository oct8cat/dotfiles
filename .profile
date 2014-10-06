[[ $- != *i* ]] && return

# Prompt
    PS1='\W $ '
    PS2='> '
    PS3='> '
    PS4='+ '

    case ${TERM} in
      xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
        PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'

        ;;
      screen)
        PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
        ;;
    esac

# Completion
    [ -r /etc/bash_completion   ] && . /etc/bash_completion

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

    # Wacom
    alias 'wactouchon'='xsetwacom --set `xsetwacom list | grep touch | grep -oP id:\ [0-9]\+ | grep -oP [0-9]\+` Touch on'
    alias 'wactouchoff'='xsetwacom --set `xsetwacom list | grep touch | grep -oP id:\ [0-9]\+ | grep -oP [0-9]\+` Touch off'

    # Mounts
    alias 'mountn2o'='mkdir -p ~/NitrousIO && sshfs action@euw1.actionbox.io:workspace ~/NitrousIO -p 17355'
    alias 'umountn2o'='fusermount -u ~/NitrousIO'

# Local profile
    [ -f ~/.profile.local ] && . ~/.profile.local

# NVM 
    export NVM_DIR="/home/oct8cat/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
