# add colors
autoload -U colors && colors

PROMPT_DIR="┌[$fg[green]%~$reset_color]"
PROMPT_INP="└ λ "
PROMPT=$PROMPT_DIR$'\n'$PROMPT_INP
