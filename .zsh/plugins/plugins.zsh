## ----- ZSH Plugins
[[ -f $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh ]] && source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh # auto completion of commands
[[ -f $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ]] && source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh # Syntax highlighting, wrong or non existing command goes red, green is good :).

## ----- zsh-abbr config
[ -f /opt/homebrew/share/zsh-abbr/zsh-abbr.zsh ] && source /opt/homebrew/share/zsh-abbr/zsh-abbr.zsh
# abbr autocmpletions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-abbr:$FPATH
fi
export ABBR_SET_EXPANSION_CURSOR=1


# ----- zsh-z specific settings
[[ -f $ZSH/plugins/zsh-z/zsh-z.plugin.zsh ]] && source $ZSH/plugins/zsh-z/zsh-z.plugin.zsh
export ZSHZ_TILDE=1
autoload -Uz compinit && compinit # Reload compinit
