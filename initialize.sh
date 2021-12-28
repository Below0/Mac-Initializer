status=1
total_phase=9

print_status() {
  echo "\033[31m>>> $1 ($status/$total_phase) <<<\033[0m"
  ((status++))
}

# 1. install Xcode
print_status "install Xcode"
xcode-select --install

# 2. install homebrew
print_status "install homebrew package manager"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 3. install basic utilities
print_status "install basic uilities"
brew install wget

# 4. install iterm2
print_status "install iterm2"
brew install Caskroom/cask/iterm2

# 5. install zsh, oh my zsh
print_status "install zsh, oh my zsh"
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 6. set oh my zsh theme
print_status "install oh my zsh theme(Dracula)"
git clone https://github.com/mbadolato/iTerm2-Color-Schemes
iTerm2-Color-Schemes/tools/import-scheme.sh 'Dracula'

# 7. install and apply zsh plugins 
print_status "install zsh plugins"
brew install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp inventory/zshrc ~/.zshrc
source ~/.zshrc

# 8. install essential fonts
print_status "install essential fonts"
git clone https://github.com/powerline/fonts
fonts/install.sh

# 9. set vimrc
print_status "copy vimrc settings"
cp inventory/vimrc ~/.vimrc