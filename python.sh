set -e -o verbose

# python

brew install python

pip3 install --user \
  awscli \
  docker-compose \
  lastversion \
  pynvim

# pip3 install --user \
#   awsebcli

pip3 install --user --pre \
  vim-vint

