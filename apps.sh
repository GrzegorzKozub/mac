set -e -o verbose

# validation

if [[ . == `dirname $0` ]]; then exit 1; fi

# git

. `dirname $0`/git.sh
. `dirname $0`/openssh.sh

# dotfiles

. `dirname $0`/dotfiles.zsh

. ~/code/dotfiles/init.sh
. ~/code/keys/init.sh

# macos

. `dirname $0`/fonts.sh

# apps

. `dirname $0`/iterm2.sh

. `dirname $0`/common.sh

. `dirname $0`/zsh.sh
. `dirname $0`/tmux.sh
. `dirname $0`/ranger.sh
. `dirname $0`/vim.sh

. `dirname $0`/aws.sh
. `dirname $0`/docker.sh

. `dirname $0`/dotnet.sh
. `dirname $0`/elixir.sh
. `dirname $0`/go.sh
. `dirname $0`/node.sh
. `dirname $0`/perl.sh
. `dirname $0`/python.sh
. `dirname $0`/ruby.sh

. `dirname $0`/chrome.sh
. `dirname $0`/keepass.sh
. `dirname $0`/postman.sh
. `dirname $0`/slack.sh
. `dirname $0`/vscode.sh

# plugins

. ~/code/dotfiles/plugins.sh

