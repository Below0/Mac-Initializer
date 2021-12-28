status=1
total_phase=8

print_status() {
  echo "\033[31m>>> $1 ($status/$total_phase)<<<\033[0m"
  ((status++))
}

# install Xcode
print_status "install Xcode"
xcode-select --install

# install homebrew
print_status "install homebrew package manager"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install basic utilities
print_status "install basic uilities"
brew install wget

# install iterm2
print_status "install iterm2"
brew install Caskroom/cask/iterm2

# install zsh, oh my zsh
print_status "install zsh, oh my zsh"
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# set oh my zsh theme
print_status "install oh my zsh theme(Dracula)"
git clone https://github.com/mbadolato/iTerm2-Color-Schemes
$HOME/iTerm2-Color-Schemes/tools/import-scheme.sh 'Dracula'

# install and apply zsh plugins 
print_status "install zsh plugins"
brew install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp inventory/zshrc $HOME/.zshrc
source $HOME/.zshrc

# install essential fonts
print_status "install essential fonts"
git clone https://github.com/powerline/fonts
fonts/install.sh
