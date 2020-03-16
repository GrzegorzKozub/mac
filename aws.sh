set -e -o verbose

# validation

if [[ ! $1 ]]; then exit 1; fi

# aws

brew install awscli

if [ ! -d ~/.aws ]; then mkdir ~/.aws; fi
if [ ! -d ~/.ecs ]; then mkdir ~/.ecs; fi

cp -r $1/.mac/keys/aws/credentials ~/.aws
