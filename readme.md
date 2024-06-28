# Dotfiles

This repo contains my dotfiles for my configs of multiple applications. Abuse them as you wish :).

# Install/configure
I'm using GNU Stow to manages these files inside my ~/dotfiles directory. GNU stow symlinks these files.

Warning: If you already have a present .zshrc file or other files backup these files first to a different location or you might lose them.

```
# Clone repo
git clone https://github.com/evadnl/dotfiles.git

# Load submodules within .gitmodules
git submodule update --init --recursive

# Install GNU Stow (MacOS)
brew install stow

# Install GNU Stow (Debiani based OS)
sudo apt install stow

cd ˜/dotfiles
stow .
```
