export LC_ALL=en_US.UTF-8
export GOPATH=$HOME/dev/go
export PATH=/usr/local/bin:`go env GOROOT`/bin:$GOPATH/bin:$PATH
export GOGITHUBPATH=$GOPATH/src/github.com
export GOPRIVATE=github.com/lovoo/*
export GOPROXY=direct

export CLICOLOR=1
export LSCOLORS=dxxxxxxxbxxxxxbxbxdxdx
export LS_COLORS=di=33:ex=31
export LESSHISTFILE=-

alias ls='ls -F'
alias la='ls -a'

PROMPT='%B%F{green}%30<..<%~%f %#%b '
setopt NO_CORRECT

# history
HISTSIZE=5000
HISTFILE=$HOME/.cache/zsh/history
SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '\e[A' history-beginning-search-backward-end
bindkey '\e[B' history-beginning-search-forward-end

# completion
autoload -U compinit
compinit

setopt NO_BEEP
setopt NO_AUTO_MENU
setopt NO_AUTO_REMOVE_SLASH
setopt RM_STAR_SILENT

zstyle ':completion:*' use-compctl false
zstyle ':completion:*' cache-path ~/.tmp/zsh/cache
zstyle ':completion::complete:*' use-cache on
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' verbose false

# git
__git_files() { _wanted files expl 'local files' _files }

# nodenv
alias enable-nodenv='eval "$(nodenv init -)"'

# totp
totp() { oathtool --totp -b "$(cat $HOME/.totp/$1)" | pbcopy; }

# kubernetes
alias k='kubectl'
ktx() { if [ -n "$1" ]; then kubectl config use-context $1; else kubectl config current-context; fi; }
