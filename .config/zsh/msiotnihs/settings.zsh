# add colors
autoload -U colors && colors

PROMPT_LEFT="┌[$fg[green]%~$reset_color]"
PROMPT_RIGHT="[$HOST]"
PROMPT_PROMPT="└ λ "
PROMPT=$(printf "%*s\r%s\n""$PROMPT_PROMPT" "$(tput cols)" "$PROMPT_RIGHT" "$PROMPT_LEFT")
