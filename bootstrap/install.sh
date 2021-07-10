#!/bin/sh

# Set admin password once
sudo -v

# Check for Homebrew and install if we don't have it
if ! command -v brew &> /dev/null 
then
  # Install Homebrew
  curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/install"
else
  # Upgrade Homebrew
  brew update
fi

# Upgrade any already-installed formulae.
brew upgrade

# Install bundle and all our dependencies via bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file=~/.dotfiles/bootstrap/Brewfile

# Remove outdated versions for the cellari
brew cleanup
