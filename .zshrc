# Neovim
alias vi='nvim'
alias vim='nvim'
export EDITOR='nvim'

# Lazygit
alias lg='lazygit'

# Exa
alias ls='exa --long'
alias tree='exa --tree'

# Zellij
alias z='zellij --layout $HOME/.config/zellij/layouts/bare-bar-layout.kdl'
alias zd='zellij --layout $HOME/.config/zellij/layouts/development-layout.kdl'

# Starship
eval "$(starship init zsh)"

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export GOPRIVATE=github.com/kkp-dfs/*
