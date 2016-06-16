# Misc
alias 'cl'='clear'
alias 'ls'='ls --color=auto'
alias 'l'='ls -l'
alias 'la'='ls -la'
alias 'lar'='ls -laR'

# Wacom
alias 'wactouchon'='xsetwacom --set `xsetwacom list | grep touch | grep -oP id:\ [0-9]\+ | grep -oP [0-9]\+` Touch on'
alias 'wactouchoff'='xsetwacom --set `xsetwacom list | grep touch | grep -oP id:\ [0-9]\+ | grep -oP [0-9]\+` Touch off'

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
