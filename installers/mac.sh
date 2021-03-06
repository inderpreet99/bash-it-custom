# Required for installing Xcode tools
# xcode-select --install

# Show Library folder
chflags nohidden ~/Library

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Disable press and hold key to allow repeating the same key again
defaults write -g ApplePressAndHoldEnabled -bool false

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# fixes VSCode font for Mojave https://github.com/Microsoft/vscode/issues/51132
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
