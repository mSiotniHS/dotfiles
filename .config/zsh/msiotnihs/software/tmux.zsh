# run tmux at startup
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [ -z "$TMUX" ]; then
	# runs tmux, creates new session "main". if exists, attaches to it
	exec tmux new-session -A -s main
fi
