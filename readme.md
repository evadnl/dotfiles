# Dotfiles

This repo contains my dotfiles for my configs of multiple applications. Abuse them as you wish :).

# Install/configure
I'm using GNU Stow to manages these files inside my ~/dotfiles directory. GNU stow symlinks these files.
```
# Install GNU Stow (MacOS) // use your distro package manager
brew install stow

cd ˜/dotfiles
stow .
```