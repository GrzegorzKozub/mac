set -e -o verbose

# common

brew install \
  bash \
  coreutils \
  curl \
  diffutils \
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

