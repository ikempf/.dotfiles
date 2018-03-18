/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install git

brew cask install iterm2
brew cask install font-hack
brew cask install spectacle
brew cask install google-chrome

brew cask install java
brew install scala
brew cask install intellij-idea


git init .
git remote add origin https://github.com/ikempf/.dotfiles.git
git pull origin master

