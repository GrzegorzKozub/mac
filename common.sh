set -e -o verbose

# common

brew install \
  bash \
  coreutils \
  curl \
  diffutils \
  findutils \
  fzf \
  gnu-sed \
  graphviz \
  grep \
  htop \
  jq \
  ripgrep \
  stow \
  wget

brew cask install \
  wkhtmltopdf

