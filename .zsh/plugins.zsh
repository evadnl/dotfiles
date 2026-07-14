## ----- ZSH Plugins
[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## ----- zsh-abbr config
[ -f /opt/homebrew/share/zsh-abbr/zsh-abbr.zsh ] && source /opt/homebrew/share/zsh-abbr/zsh-abbr.zsh
# abbr autocmpletions (hardcode brew prefix to avoid spawning `brew --prefix`)
[ -d /opt/homebrew/share/zsh-abbr ] && FPATH=/opt/homebrew/share/zsh-abbr:$FPATH
export ABBR_SET_EXPANSION_CURSOR=1

## ----- fzf integration
[ -f $ZSH/config/fzf.zsh ] && source $ZSH/config/fzf.zsh

## ----- nvm (lazy-loaded — sourced on first use to keep startup fast)
export NVM_DIR="$HOME/.nvm"
_load_nvm() {
  unset -f nvm node npm npx 2>/dev/null
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
}
for _cmd in nvm node npm npx; do
  eval "${_cmd}() { _load_nvm; ${_cmd} \"\$@\"; }"
done
unset _cmd

## ----- pyenv (lazy-loaded — initialized on first use to keep startup fast)
export PATH="$HOME/.pyenv/bin:$PATH"
_load_pyenv() {
  unset -f pyenv python python3 pip pip3 2>/dev/null
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
}
for _cmd in pyenv python python3 pip pip3; do
  eval "${_cmd}() { _load_pyenv; ${_cmd} \"\$@\"; }"
done
unset _cmd

## ----- Windsurf (Codeium) CLI — only if installed
[ -d "$HOME/.codeium/windsurf" ] && export PATH="$HOME/.codeium/windsurf/bin:$PATH"


## ------ nix daemon
[ -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh ] && source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
