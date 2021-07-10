#!/bin/sh

# Set admin password once
sudo -v

# Before you can run Homebrew you need to have the Command Line Tools for Xcode installed
xcode-select --install

# Check for Homebrew and install if we don't have it
which -s brew
if [[ $? != 0 ]] ; then
  # Install Homebrew
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  # Upgrade Homebrew
  brew update
fi

# Upgrade any already-installed formulae.
brew upgrade

# Install bundle and all our dependencies via bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Remove outdated versions for the cellari
brew cleanup