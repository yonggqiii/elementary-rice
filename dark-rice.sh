echo "Ricing..."
gsettings set io.elementary.terminal.settings background "rgb(23,31,37)"
gsettings set io.elementary.terminal.settings cursor-color "#c4c5b5"
gsettings set io.elementary.terminal.settings foreground "#ffffff"
gsettings set io.elementary.terminal.settings palette "#ff0000:#ff6600:#ffd400:#01c10b:#00a9ff:#817cff:#ff0094:#00fffa:#ff0000:#ff6600:#ffd400:#01c10b:#00a9ff:#817cff:#ff0094:#00fffa"
cd
PATHTOHOME=$(pwd)
gsettings set org.gnome.desktop.background picture-uri "file://$PATHTOHOME/.local/share/backgrounds/mywallpaper.png"
gsettings set org.gnome.desktop.interface gtk-theme Sierra-dark

