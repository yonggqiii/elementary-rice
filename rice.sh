echo "Fetching updates"
sudo apt-get update
sudo apt-get upgrade

echo "Installing elementary tweaks"
sudo add-apt-repository ppa:philip.scoot/elementary-tweaks
sudo apt-get update
sudo apt-get install elementary-tweaks

echo "Installing devilspie"
sudo apt-get install devilspie

echo "Installing dconf editor"
sudo apt-get install dconf-editor

echo "Installing vim"
sudo apt-get install vim

echo "Copying theme"
sudo cp theme/Themes/* /usr/share/themes/

echo "Installing neofetch"
sudo apt-get install neofetch

echo "Installing google chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo "Installing ranger"
sudo apt-get install ranger

echo "Installing htop"
sudo apt-get install htop

echo "Copying dotfiles"
cp ./dotfiles/.vimrc ~/
cp ./dotfiles/.bashrc ~/
mkdir ~/.devilspie
cp ./dotfiles/*.ds ~/.devilspie
cp ./dotfiles/mycolor.vim ~/.vim/colors
mkdir ~/.vim/autoload/
cp ./dotfiles/plug.vim ~/.vim/autoload/
cp ./dotfiles/rc.conf ~/.config/ranger/

echo "Ricing..."
gsettings set org.pantheon.desktop.gala.behavior hotcorner-topleft "minimize-current"
gsettings set org.pantheon.desktop.gala.behavior hotcorner-topright "maximize-current"
gsettings set org.pantheon.desktop.gala.behavior hotcorner-bottomleft "show-workspace-view"
gsettings set org.pantheon.desktop.gala.behavior hotcorner-bottomright "show-workspace-view"
gsettings set io.elementary.terminal.settings background "rgb(23,21,37"
gsettings set io.elementary.terminal.settings cursor-color "#c4c5b5"
gsettings set io.elementary.terminal.settings foreground "#ffffff"
gsettings set io.elementary.terminal.settings palette "#ff0000:#ff6600:#ffd400:#01c10b:#00a9ff:#817cff:#ff0094:#00fffa:#ff0000:#ff6600:#ffd400:#01c10b:#00a9ff:#817cff:#ff0094:#00fffa"
gsettings set org.pantheon.desktop.gala.mask-corners corner-radius 32

