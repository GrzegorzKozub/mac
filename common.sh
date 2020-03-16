set -e -o verbose

# common

brew install \
  coreutils \
  curl \
  findutils \
  fzf \
  glances \
  gnu-sed \
  graphviz \
  grep \
  jq \
  ripgrep \
  wget

brew cask install \
  wkhtmltopdf

