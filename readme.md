# Dotfiles

This repo contains my dotfiles for my configs of multiple applications. Abuse them as you wish :).

# Install/configure
I'm using GNU Stow to manages these files inside my ~/dotfiles directory. GNU stow symlinks these files.

Warning: If you already have a present .zshrc file or other files backup these files first to a different location or you might lose them.

```
# Clone repo
git clone https://github.com/evadnl/dotfiles.git


# Installi zsh plugins and GNU Stow
brew install olets/tap/zsh-abbr
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install zoxide
brew install fzf
brew install stow

cd ˜/dotfiles
stow .
```
