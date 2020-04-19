#!/usr/bin/env zsh

set -e -o verbose

# System Preferences > Dock

# defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock mineffect -string 'scale'
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array
defaults write com.apple.dock show-recents -bool false

killall Dock

# System Preferences > Spotlight

touch /Applications/Xcode.app
chflags hidden /Applications/Xcode.app

defaults write com.apple.Spotlight orderedItems -array \
  '{ "enabled" = 1; "name" = "APPLICATIONS"; }' \
  '{ "enabled" = 0; "name" = "MENU_SPOTLIGHT_SUGGESTIONS"; }' \
  '{ "enabled" = 1; "name" = "MENU_CONVERSION"; }' \
  '{ "enabled" = 1; "name" = "MENU_EXPRESSION"; }' \
  '{ "enabled" = 0; "name" = "MENU_DEFINITION"; }' \
  '{ "enabled" = 1; "name" = "SYSTEM_PREFS"; }' \
  '{ "enabled" = 0; "name" = "DOCUMENTS"; }' \
  '{ "enabled" = 0; "name" = "DIRECTORIES"; }' \
  '{ "enabled" = 0; "name" = "PRESENTATIONS"; }' \
  '{ "enabled" = 0; "name" = "SPREADSHEETS"; }' \
  '{ "enabled" = 0; "name" = "PDF"; }' \
  '{ "enabled" = 0; "name" = "MESSAGES"; }' \
  '{ "enabled" = 0; "name" = "CONTACT"; }' \
  '{ "enabled" = 0; "name" = "EVENT_TODO"; }' \
  '{ "enabled" = 0; "name" = "IMAGES"; }' \
  '{ "enabled" = 0; "name" = "BOOKMARKS"; }' \
  '{ "enabled" = 0; "name" = "MUSIC"; }' \
  '{ "enabled" = 0; "name" = "MOVIES"; }' \
  '{ "enabled" = 0; "name" = "FONTS"; }' \
  '{ "enabled" = 0; "name" = "MENU_OTHER"; }' \
  '{ "enabled" = 0; "name" = "SOURCE"; }'

# System Preferences > Sound

osascript -e 'set Volume 3.5'

# System Preferences > Keyboard

defaults write -globalDomain KeyRepeat -int 2
defaults write -globalDomain InitialKeyRepeat -int 35
# defaults write -globalDomain com.apple.keyboard.fnState -bool true

# Finder

defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder FXPreferredViewStyle -string 'clmv'
defaults write com.apple.finder NewWindowTarget -string 'PfHm'
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# don't create .DS_Store on network and USB volumes

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# remove the last login greeting

touch ~/.hushlogin

