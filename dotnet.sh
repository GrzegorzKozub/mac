set -e -o verbose

# dotnet

brew cask install dotnet-sdk

dotnet tool install -g dotnet-counters
dotnet tool install -g dotnet-dump
dotnet tool install -g dotnet-format
dotnet tool install -g dotnet-outdated
dotnet tool install -g dotnet-trace

