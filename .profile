[[ $- != *i* ]] && return

SRC="functions aliases prompt completion"
for S in $SRC; do source $HOME/.profile.d/$S.sh; done

[ -f ~/.profile.local ] && . ~/.profile.local

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
