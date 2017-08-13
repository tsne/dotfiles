export GOPATH=$HOME/dev/go
export PATH=/usr/local/bin:`go env GOROOT`/bin:$GOPATH/bin:$PATH

export CLICOLOR=1
export LSCOLORS=dxxxxxxxbxxxxxbxbxdxdx
export LS_COLORS=di=33:ex=31
export LESSHISTFILE=-

alias ls='ls -F'
alias la='ls -a'

PROMPT='%B%F{green}%30<..<%~%f %#%b '
setopt NO_CORRECT

# history
HISTSIZE=300
SAVEHIST=$HISTSIZE
HISTFILE=$HOME/.cache/zsh/history
setopt APPEND_HISTORY

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

# nodenv
alias enable-nodenv='export NODENV_ROOT=/usr/local/var/nodenv && eval "$(nodenv init -)"'
