# Mac setup

## Homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew tap caskroom/fonts
brew tap caskroom/versions
```

## Oh My ZSH
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Cli tools
```
brew install git
brew install tldr

brew cask install java
brew install scala
brew install sbt

brew install telnet

brew install bat
brew install ag
brew install htop
```

## Dev tools
```
brew cask install iterm2
brew cask install font-hack
brew cask install font-hasklig
brew cask install font-fira-code
brew cask install intellij-idea
```

## Vim
```
Install vim-plug
```

## Apps
```
#brew cask install spectacle
#brew cask install hammerspoon
brew cask install macmediakeyforwarder
brew cask install mtmr
brew cask install google-chrome
brew cask install caffeine
brew cask install flux
```

# Security
```
brew cask install avast-security
brew cask install icefloor
```

# Checkout this repo's dotfiles
```
git init .
git remote add origin git@github.com:ikempf/.dotfiles.git
git pull origin master
git branch --set-upstream-to=origin/master master
```

# Other configs
Mission control, move left/right a space
