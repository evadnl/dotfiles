# ----- fzf Config
# Load fzf key-bindings (CTRL-R history, CTRL-T files, ALT-C cd) and completion.
# Uses the modern `fzf --zsh` integration (fzf >= 0.48); replaces the old ~/.fzf.zsh.
if command -v fzf >/dev/null 2>&1; then
  source <(fzf --zsh)
fi
