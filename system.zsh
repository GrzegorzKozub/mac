#!/usr/bin/env zsh

set -e -o verbose

# set hostname

sudo scutil --set ComputerName mac
sudo scutil --set HostName mac

# don't require password for sudo

echo 'greg ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

