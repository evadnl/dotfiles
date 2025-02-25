## ----- ZSH Plugins
[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



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
