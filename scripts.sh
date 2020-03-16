set -e -o verbose

# dirs

if [ ! -d ~/code ]; then mkdir ~/code; fi

# scripts

if [ -d ~/code/mac ]; then rm -rf ~/code/mac; fi
git clone git@github.com:GrzegorzKozub/mac.git ~/code/mac

if [ -d ~/code/keys ]; then rm -rf ~/code/keys; fi
git clone git@github.com:GrzegorzKozub/keys.git ~/code/keys

if [ -d ~/code/themes ]; then rm -rf ~/code/themes; fi
git clone git@github.com:GrzegorzKozub/themes.git ~/code/themes
