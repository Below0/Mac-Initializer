# install Xcode
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install basic utilities
brew install wget git

# install iterm2
brew install Caskroom/cask/iterm2

# install zsh, oh my zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# set oh my zsh theme
git clone https://github.com/mbadolato/iTerm2-Color-Schemes
$HOME/iTerm2-Color-Schemes/tools/import-scheme.sh 'Dracula'

# install and apply zsh plugins 
brew install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp zshrc $HOME/.zshrc

# install essential fonts
git clone https://github.com/powerline/fonts
fonts/install.sh
