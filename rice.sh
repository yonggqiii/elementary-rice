echo "Adding repositories"
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:peterlevi/ppa

echo "Fetching updates"
sudo apt-get update
sudo apt-get upgrade

echo "Installing elementary tweaks"
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

echo "Installing icons"
sudo apt-get install numix-icon-theme-circle

echo "Installing Variety"
sudo apt-get install variety variety-slideshow

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
mkdir ~/.config/variety/
cp ./dotfiles/variety.conf ~/.config/variety/
mkdir ~/.config/Code/
mkdir ~/.config/Code/User/
cp ./dotfiles/settings.json ~/.config/Code/User/

echo "Copying backgrounds"
mkdir ~/.local/share/backgrounds/
cp ./background/* ~/.local/share/backgrounds

echo "Ricing..."
gsettings set org.pantheon.desktop.gala.behavior hotcorner-topright "maximize-current"
gsettings set org.pantheon.desktop.gala.behavior hotcorner-bottomleft "show-workspace-view"
gsettings set org.pantheon.desktop.gala.behavior hotcorner-bottomright "show-workspace-view"
gsettings set org.pantheon.desktop.gala.mask-corners corner-radius 1
gsettings set org.pantheon.desktop.gala.appearance button-layout :minimize,maximize,close
gsettings set io.elementary.terminal.settings tab-bar-behavior 'Never Show Tabs'
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Circle'
gsettings set io.elementary.terminal.settings background "#12120E"
gsettings set io.elementary.terminal.settings cursor-color "#c4c5b5"
gsettings set io.elementary.terminal.settings foreground "#ffffff"
gsettings set io.elementary.terminal.settings palette "#ff0000:#ff6600:#ffd400:#01c10b:#00a9ff:#817cff:#ff0094:#00fffa:#ff0000:#ff6600:#ffd400:#01c10b:#00a9ff:#817cff:#ff0094:#00fffa"

gsettings set io.elementary.terminal.settings palette "#000000:#f25056:#9cf196:#f0f69f:#a4d7e1:#e5b0ea:#7fe7cc:#dfdfdf:#f25056:#b0e0a8:#f0f69f:#e3c876:#a4d7e1:#e5b0ea:#7fe7cc:#ffffff"

cd
PATHTOHOME=$(pwd)
gsettings set org.gnome.desktop.interface gtk-theme Sierra-dark
sed "/color/d" .vimrc -i
echo "color darktheme" >> .vimrc

