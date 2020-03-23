set -e -o verbose

# iterm2

brew cask install iterm2

defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder "~/code/dotfiles/iterm2"

