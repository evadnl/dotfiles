# ----- Set main path to .zsh folder
export ZSH=$HOME/.zsh

# ----- Initialize autocompletion for zsh
autoload -Uz compinit && compinit
source <(kubectl completion zsh) # Kubernetes commands
source <(helm completion zsh) # Helm commands
#source <(ansible completion zsh) # Ansible commands

# ----- history for zsh
[[ -f $ZSH/config/history.zsh ]] && source $ZSH/config/history.zsh

# ----- plugins for zsh
[[ -f $ZSH/plugins/plugins.zsh ]] && source $ZSH/plugins/plugins.zsh

# ----- aliases
[[ -f $ZSH/config/aliases.zsh ]] && source $ZSH/config/aliases.zsh

# ----- Completion options and styling
zstyle ':completion:*' menu select # selectable menu
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}' 'r:|=*' 'l:|=* r:|=*'  # case insensitive completion
zstyle ':completion:*' special-dirs true # Complete . and .. special directories
zstyle ':completion:*' list-colors '' # colorize completion lists
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01' # colorize kill list


# ----- initialize starship prompt
eval "$(starship init zsh)"
