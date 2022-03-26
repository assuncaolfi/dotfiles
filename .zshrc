if [ $ITERM_SESSION_ID ]; then
precmd() {
  echo -ne "\033]0;${PWD##*/}\007"
}
fi

export FZF_DEFAULT_COMMAND="find -L"
