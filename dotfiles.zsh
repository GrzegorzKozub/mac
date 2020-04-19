#!/usr/bin/env zsh

set -e -o verbose

# temporary keys

PENDRIVE=$(mount | grep ARCH | sed -e 's/.*\ on\ //' | sed -e 's/\ (.*//')
[[ $PENDRIVE ]] || exit 1

[[ -d ~/.ssh ]] || mkdir ~/.ssh

cp $PENDRIVE/.bootstrap/keys/openssh/.ssh/config ~/.ssh
chmod 600 ~/.ssh/config

cp -r $PENDRIVE/.bootstrap/keys/openssh/.ssh/github.com ~/.ssh
chmod 600 ~/.ssh/github.com/*

unset PENDRIVE

# repos

[[ -d ~/code ]] || mkdir ~/code

[[ -d ~/code/arch ]] && rm -rf ~/code/arch
git clone git@github.com:GrzegorzKozub/arch.git ~/code/arch

[[ -d ~/code/dotfiles ]] && rm -rf ~/code/dotfiles
git clone --recursive git@github.com:GrzegorzKozub/dotfiles.git ~/code/dotfiles

[[ -d ~/code/keys ]] && rm -rf ~/code/keys
git clone git@github.com:GrzegorzKozub/keys.git ~/code/keys

[[ -d ~/code/mac ]] && rm -rf ~/code/mac
git clone git@github.com:GrzegorzKozub/mac.git ~/code/mac

[[ -d ~/code/passwords ]] && rm -rf ~/code/passwords
git clone git@github.com:GrzegorzKozub/passwords.git ~/code/passwords

[[ -d ~/code/themes ]] && rm -rf ~/code/themes
git clone git@github.com:GrzegorzKozub/themes.git ~/code/themes

