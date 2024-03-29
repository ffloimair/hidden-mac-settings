#!/bin/sh

# Set update search interval in Mac AppStore to once per day
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Show full path in Finder's window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES; killall Finder

# Add spacers to Dock in apps area (execute once per spacer) -> can be deleted by dragging it out of the Dock again
# defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'; killall Dock

# Add spacers to Dock in document area (execute once per spacer) -> can be deleted by dragging it out of the Dock again
# defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'; killall Dock

# Hide apps to Dock (showing them in a faded look for the icons)
defaults write com.apple.Dock showhidden -bool TRUE; killall Dock

# Deactivate Mac Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean true; killall Dock

# Reset Dock to Defaults
# defaults delete com.apple.dock; killall Dock

# Disable iCloud Drive as default save target
# defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false

# Do not write .DS_xxx files to network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

#Reenable famous Apple Mac chime on startup on newer Macs
sudo nvram StartupMute=%00

#Disable Mac chime on startup again
#sudo nvram StartupMute=%01

#Disable python2 deprecation warning popup whenever an application accesses /bin/python (e.g. python extension in Visual Studio Code)
defaults write com.apple.python DisablePythonAlert True
