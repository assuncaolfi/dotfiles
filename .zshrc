if [ $ITERM_SESSION_ID ]; then
precmd() {
  echo -ne "\033]0;${PWD##*/}\007"
}
fi

export PATH=$(brew --prefix)/smlnj/bin:"$PATH"
export PATH="/Applications/SuperCollider.app/Contents/MacOS/:$PATH"

[ -f "/Users/luis.assuncao/.ghcup/env" ] && source "/Users/luis.assuncao/.ghcup/env" # ghcup-env
