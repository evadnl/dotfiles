# ----- History Config
HISTSIZE=100000                  # How many lines of history to keep in memory.
HISTFILE=$ZSH/.zsh_history       # Where to save history to disk.
SAVEHIST=100000                  # Number of history entries to save to disk.
setopt appendhistory             # Append history file.
setopt share_history             # Share history between multiple sessions.
setopt hist_ignore_all_dups      # Ignore duplicates.
setopt hist_ignore_space         # When using a space before the command, it will not get picked up by the history file.
