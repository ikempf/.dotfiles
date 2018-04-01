# Mac setup

## Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Cli tools
brew install git

brew cask install java\
brew install scala\
brew install sbt

brew cask install node

brew install telnet

## Dev tools
brew cask install iterm2\
brew cask install font-hack\
brew cask install intellij-idea

## Apps
brew cask install spectacle\
brew cask install google-chrome\
brew cask install caffeine\
brew cask install flux

# Checkout this repo's dotfiles
git init .\
git remote add origin https://github.com/ikempf/.dotfiles.git\
git pull origin master

