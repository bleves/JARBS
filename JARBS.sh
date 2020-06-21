#!/bin/bash
#
#
# JARBS | Joshes Automatic Ricing Bash Script
# 
#

# directories and base backages
mkdir dox dl pix vid apl
pacman -Syu neovim git xf86-video-amdgpu xf86-video-intel xorg-server xorg-xinit adobe-source-code-pro-fonts feh xcompmgr dmenu make pcmanfm firefox 


# git
mkdir temp
git clone https://github.com/bleves/dadgify ~/temp
touch ~/.bashrc ~/.xinitrc ~/.Xresources
cp ~/temp/.bashrc ~/.bashrc
cp ~/temp/.xinitrc ~/.xinitrc
cp ~/temp/.Xresources ~/.Xresources

# suckless
mkdir ~/.suckless
wget https://dl.suckless.org/st/st-0.8.4.tar.gz ~/.suckless
tar xvf ~/.suckless/st-0.84.tar.gz
wget https://dl.suckless.org/dwm/dwm-6.2.tar.gz
tar xvf ~/.suckless/dwm-6.2.tar.gz ~/.suckless
git clone https://git.suckless.org/slstatus ~/.suckless

# make
make clean install -C ~/.suckless/dwm-6.2
make clean install -C ~/.suckless/slstatus
make clean install -C ~/.suckless/st-0.8.4

# end
echo "The Script is now done installing all programs"
echo "Application Launcher: dmenu     Alt+p"
echo "Terminal: st                    Alt+Shift+Enter"
echo "Browser: Firefox"
echo "File Manager: pcmanfm"
