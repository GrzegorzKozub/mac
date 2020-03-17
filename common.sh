set -e -o verbose

# common

brew install \
  bash \
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
  wget \
  xclip

brew cask install \
  wkhtmltopdf

