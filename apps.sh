set -e -o verbose

# validation

if [[ . == `dirname $0` ]]; then exit 1; fi

# git and openssh

brew install \
  git \
  openssh

# dotfiles

. `dirname $0`/dotfiles.zsh

. ~/code/dotfiles/init.sh
. ~/code/keys/init.sh

# fonts

brew tap homebrew/cask-fonts

brew cask install \
  font-fira-code

# brew cask install \
#   font-firacode-nerd-font

# terminal

brew cask install \
  alacritty \
  iterm2

defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder "~/code/dotfiles/iterm2"

# common

brew install \
  bash \
  coreutils \
  curl \
  diffutils \
  fd \
  findutils \
  fzf \
  glances \
  gnu-sed \
  graphviz \
  grep \
  jq \
  ripgrep \
  stow \
  wget

brew cask install \
  wkhtmltopdf

# zsh, tmux and ranger

brew install \
  ranger \
  tmux \
  zsh zsh-completions

compaudit | xargs chmod g-w
chsh -s $(which zsh) greg

# vim and neovim

brew install \
  astyle ctags editorconfig hadolint tidy-html5 vim \
  neovim

# docker

brew cask install \
  docker

sed -i 's/"autoStart" : true/"autoStart" : false/' \
  ~/Library/Group\ Containers/group.com.docker/settings.json
sed -i 's/"checkForUpdates" : true/"checkForUpdates" : false/' \
  ~/Library/Group\ Containers/group.com.docker/settings.json
sed -i 's/"analyticsEnabled" : true/"analyticsEnabled" : false/' \
  ~/Library/Group\ Containers/group.com.docker/settings.json

# aws

brew install \
  awscli

# dev

brew install \
  elixir \
  go \
  node \
  perl \
  python \
  ruby

brew cask install \
  dotnet-sdk

# apps

brew tap \
  horar/openconnect-gui

brew install \
  openconnect openconnect-gui

brew cask install \
  google-chrome \
  keepassxc \
  postman \
  slack \
  visual-studio-code

# plugins

. ~/code/dotfiles/plugins.sh

