source $MS_CONFIG_PATH/settings.zsh
source $MS_CONFIG_PATH/aliases.zsh

for file in $MS_CONFIG_PATH/software/**/*.zsh; do
	source "${file}"
done;

source $MS_CONFIG_PATH/plugins.zsh
