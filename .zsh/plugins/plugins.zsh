## ----- ZSH Plugins
[[ -f $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh ]] && source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh # auto completion of commands
[[ -f $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ]] && source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh # Syntax highlighting, wrong or non existing command goes red, green is good :).

## ----- zsh-abbr config
[[ -f $ZSH/plugins/zsh-abbr/zsh-abbr.plugin.zsh ]] && source $ZSH/plugins/zsh-abbr/zsh-abbr.plugin.zsh
export ABBR_SET_EXPANSION_CURSOR=1


# ----- zsh-z specific settings
[[ -f $ZSH/plugins/zsh-z/zsh-z.plugin.zsh ]] && source $ZSH/plugins/zsh-z/zsh-z.plugin.zsh
export ZSHZ_TILDE=1
autoload -Uz compinit && compinit # Reload compinit
