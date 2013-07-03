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

    # Wacom
    alias 'wactouchon'='xsetwacom --set `xsetwacom list | grep touch | grep -oP id:\ [0-9]\+ | grep -oP [0-9]\+` Touch on'
    alias 'wactouchoff'='xsetwacom --set `xsetwacom list | grep touch | grep -oP id:\ [0-9]\+ | grep -oP [0-9]\+` Touch off'

    # Gists
    alias 'cw'='curl --silent https://gist.github.com/oct8cat/4634063/raw | sh $0'
