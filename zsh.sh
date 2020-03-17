set -e -o verbose

# zsh

brew install zsh zsh-completions

compaudit | xargs chmod g-w
chsh -s $(which zsh) greg

