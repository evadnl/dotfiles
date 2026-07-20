# ~/.zshenv — sourced by EVERY zsh (interactive, non-interactive, scripts, GUI-spawned).
# Keep this minimal and fast: no subprocess spawns.

export NVM_DIR="$HOME/.nvm"

# Put the default node version's bin on PATH so a REAL node/npm/npx binary is always
# discoverable — needed by non-interactive shells (Claude Code's Bash tool, MCP servers,
# npx-launched tools, VS Code). nvm.sh itself stays lazy (see .zsh/plugins.zsh).
() {
  emulate -L zsh
  [[ -d $NVM_DIR/versions/node ]] || return
  local ver=default bin
  # Follow the alias chain (default -> lts/* -> lts/jod -> v22.17.0)
  while [[ -f $NVM_DIR/alias/$ver ]]; do
    ver=$(<"$NVM_DIR/alias/$ver")
  done
  # Resolve a bare "lts/*" to the newest installed lts alias
  if [[ $ver == 'lts/*' ]]; then
    local -a ltsfiles=($NVM_DIR/alias/lts/*(N))
    (( $#ltsfiles )) && ver=$(<"${ltsfiles[-1]}")
  fi
  # Glob the matching install dir (handles partial versions like "22")
  local -a dirs=($NVM_DIR/versions/node/${ver}*/bin(N))
  (( $#dirs )) || return
  bin=${dirs[-1]}
  # Idempotent prepend (nested shells re-source .zshenv)
  [[ ":$PATH:" == *":$bin:"* ]] || path=("$bin" $path)
}

export PYENV_ROOT="$HOME/.pyenv"

# Put pyenv's shims on PATH so real python/python3/pip/pip3 exist in EVERY shell
# (non-interactive included). Shims honor .python-version and the global version on their
# own; `pyenv init` shell integration stays lazy in .zsh/plugins.zsh.
[[ -d $PYENV_ROOT/shims && ":$PATH:" != *":$PYENV_ROOT/shims:"* ]] && path=("$PYENV_ROOT/shims" $path)
