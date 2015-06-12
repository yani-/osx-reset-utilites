#!/bin/bash
# Reset Finder
killall -KILL Finder
# Reset Dock
killall -KILL Dock
# Reset UIServer
killall -KILL SystemUIServer

# Restart discovery daemon
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.discoveryd.plist

# Restart efilogin-helper daemon
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.efilogin-helper.plist
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.efilogin-helper.plist
