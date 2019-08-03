echo "Fetching updates"
sudo apt-get update
sudo apt-get upgrade

echo "Installing elementary tweaks"
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt-get update
sudo apt-get install elementary-tweaks

echo "Installing devilspie"
sudo apt-get install devilspie

echo "Installing dconf editor"
sudo apt-get install dconf-editor

echo "Installing vim"
sudo apt-get install vim

echo "Copying theme"
sudo cp -r theme/Themes/* /usr/share/themes/

echo "Installing neofetch"
sudo apt-get install neofetch

echo "Installing ranger"
sudo apt-get install ranger

echo "Installing htop"
sudo apt-get install htop

echo "Installing impressive"
sudo apt-get install impressive

echo "Installing syncthing"
sudo apt-get install syncthing

echo "Copying dotfiles"
cp ./dotfiles/.vimrc ~/
cp ./dotfiles/.bashrc ~/
mkdir ~/.devilspie
mkdir ~/.vim
cp ./dotfiles/*.ds ~/.devilspie
mkdir ~/.vim/colors
cp ./dotfiles/mycolor.vim ~/.vim/colors
mkdir ~/.vim/autoload/
cp ./dotfiles/plug.vim ~/.vim/autoload/
cp ./dotfiles/rc.conf ~/.config/ranger/
mkdir ~/texmf
mkdir ~/texmf/tex
mkdir ~/texmf/tex/latex
mkdir ~/texmf/tex/latex/beamer
cp ./dotfiles/beamerthemepeatree.sty ~/texmf/tex/latex/beamer/

echo "Copying backgrounds"
mkdir ~/.local/share/backgrounds/
cp ./background/* ~/.local/share/backgrounds

echo "Ricing..."
gsettings set org.pantheon.desktop.gala.behavior hotcorner-topright "maximize-current"
gsettings set org.pantheon.desktop.gala.behavior hotcorner-bottomleft "show-workspace-view"
gsettings set org.pantheon.desktop.gala.behavior hotcorner-bottomright "show-workspace-view"
gsettings set org.pantheon.desktop.gala.mask-corners corner-radius 32
gsettings set org.pantheon.desktop.gala.appearance button-layout :minimize,maximize,close
gsettigs set io.elementary.terminal.settings tab-bar-behavior 'Never Show Tabs'

