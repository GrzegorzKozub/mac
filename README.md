# Mac

Fresh macOS config automation

## Installation

1. Boot into recovery mode
2. Create two equal partitions
  - Apple File System APFS (Case-sensitive, Encrypted) for the operating system
  - Mac OS Extended (Case-sensitive, Journaled, Encrypted) for Time Machine backups
3. Install macOS with default options without using Apple ID

## Maual system config

1. In System Preferences
  - disable Siri
  - disable Spotlight Suggestions in Spotlight
  - exclude home dir and pendrive from Spotlight
  - set your picture in Users & Groups
  - disable Screen Time
  - enable dragging in Accessability > Pointer Control > Trackpad Options
  - disable all options in Security & Privacy > Privacy > Analitycs & Improvements
  - disable Bluetooth in Network
  - disable user interface sound effects in Sound
  - make fn act like ctrl in Keyboard > Modifier Keys
  - disable Look up & data detectors in Trackpad
  - enable Tap to click and Silent clicking in Trackpad
  - enable Night Shift in Displays
  - select backup disk in Time Machine
2. In Finder Preferences
  - remove AirDrop and Applications and add home dir to Favorites in Sidebar
  - remove Bonjour computers and Connected servers from Locations in Sidebar
3. Set keyboard input source to Polish - Pro
4. Turn keyboard brightness down until it's disabled

## Scripted config

1. Once per macOS installation run `system.sh`
2. Run `macos.sh`
3. Reboot
4. Run `homebrew.sh` and close the terminal
5. Run `apps.sh`

## Manual app config

1. In System Preferences
  - Select iTerm2 in Security & Privacy > Privacy > Full Disk Access
  - Select KeePassXC in Security & Privacy > Privacy > Accessability and Screen Recording
2. Add apps to Dock
3. Setup Chrome
  - Disable Command+Q quit warning
  - Enable enhanced spell check
  - Run `rm -rf ~/Applications/Chrome\ Apps.localized`
4. Setup Dropbox
  - Exclude unwanted dirs from sync

