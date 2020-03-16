set -e -o verbose

# docker

brew cask install docker

sed 's/"autoStart" : true/"autoStart" : false/' ~/Library/Group\ Containers/group.com.docker/settings.json
sed -i 's/"checkForUpdates" : true/"checkForUpdates" : false/' ~/Library/Group\ Containers/group.com.docker/settings.json
sed -i 's/"analyticsEnabled" : true/"analyticsEnabled" : false/' ~/Library/Group\ Containers/group.com.docker/settings.json
