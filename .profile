export PS1='\W $ '
export PS2='> '
export PS3='> '
export PS4='+ '
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=vim
export XDG_CONFIG_HOME=~/.config
export PATH=~/.local/bin:~/.bin:$PATH

[ -f ~/.profile.$(uname) ] && . ~/.profile.$(uname)

alias 'cl'='clear'
alias 'l'='ls -l'
alias 'la'='ls -la'
alias 'lar'='ls -laR'
alias 'gs'='git status -bs'
alias 'gl'='git log --oneline'
alias 'gpr'='git pull --rebase'
alias 'gd'='git diff'
alias 'gdc'='git diff --cached'
alias 'gc'='git commit'
alias 'gca'='git commit --amend'
alias 'lvim'='vim -g -c "colorscheme base16-solarized-light"'
alias 'dvim'='vim -g -c "colorscheme base16-solarized-dark"'

[ -f ~/.profile.local ] && . ~/.profile.local

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
