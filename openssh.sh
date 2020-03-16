set -e -o verbose

# validation

if [[ ! $1 ]]; then exit 1; fi

# openssh

brew install openssh

if [ ! -d ~/.ssh ]; then mkdir ~/.ssh; fi

cp $1/.mac/keys/ssh/config ~/.ssh
chmod 600 ~/.ssh/config

cp -r $1/.mac/keys/ssh/github.com ~/.ssh
chmod 600 ~/.ssh/github.com/*

cp -r $1/.mac/keys/ssh/amazonaws.com ~/.ssh
chmod 600 ~/.ssh/amazonaws.com/*
