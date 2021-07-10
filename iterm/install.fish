#!/usr/bin/env fish

sed "s;/Users/prabu;$HOME;g" $DOTFILES/iterm/com.googlecode.iterm2.plist.example >$DOTFILES/iterm/com.googlecode.iterm2.plist
	and defaults write com.googlecode.iterm2 PrefsCustomFolder -string $DOTFILES/iterm
	and defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
