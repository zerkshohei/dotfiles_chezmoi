#!/bin/sh
# DS_Store作らない
defaults write com.apple.desktopservices DSDontWriteNetworkStores True
killall Finder

