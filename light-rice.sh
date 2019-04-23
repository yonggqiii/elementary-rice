echo "Ricing..."
gsettings set io.elementary.terminal.settings cursor-color "#333333"
gsettings set io.elementary.terminal.settings foreground "#000000"

gsettings set io.elementary.terminal.settings palette "#743737:#9B5526:#8C7A29:#3A893E:#3A718E:#6A409A:#9B3E7D:#45A2A1:#743737:#9B5526:#8C7A29:#3A893E:#3A718E:#6A409A:#9B3E7D:#45A2A1"

gsettings set io.elementary.terminal.settings background "#F8F7E6"
cd
PATHTOHOME=$(pwd)
gsettings set org.gnome.desktop.background picture-uri "file://$PATHTOHOME/.local/share/backgrounds/mywallpaper-light.png"
gsettings set org.gnome.desktop.interface gtk-theme Sierra-light-solid
