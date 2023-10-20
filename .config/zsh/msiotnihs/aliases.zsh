# brew on x64 architecture
alias brew86='arch --x86_64 /usr/local/Homebrew/bin/brew'

# aliases for running soft on different architectures
alias oldify='arch --x86_64'
alias newify='arch --arm64'

# dotfiles management
alias msi.config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
