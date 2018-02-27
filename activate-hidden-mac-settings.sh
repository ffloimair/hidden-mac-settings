#!/bin/sh

# Set update search interval in Mac AppStore to once per day
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Show full path in Finder's window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES; killall Finder

# Add spacers to Dock (execute once per spacer) -> can be deleted by dragging it out of the Dock again
# defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'; killall Dock

# Hide apps to Dock (showing them in a faded look for the icons)
defaults write com.apple.Dock showhidden -bool TRUE; killall Dock

