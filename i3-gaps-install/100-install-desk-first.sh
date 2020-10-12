#!/bin/bash

set -e

# Install build tools
sudo apt install -y autoconf automake build-essential cmake gcc libtool libudev-dev
sudo apt install -y qt5-default zlib1g-dev libappindicator-dev libpulse-dev
sudo apt install -y libquazip5-dev libqt5x11extras5-dev libxcb-screensaver0-dev
sudo apt install -y libxcb-ewmh-dev libxcb1-dev git libdbusmenu-qt5-dev qttools5-dev
sudo apt install -y make python-all python-setuptools python3-all python3-setuptools

# Install additional programs
sudo apt install -y catfish curl fonts-powerline fonts-font-awesome gimp git glances
sudo apt install -y gparted htop kate powerline python-powerline python3-powerline
sudo apt install -y ranger screenfetch ssh synapse terminator thunar tree vim
sudo apt install -y vim-airline vim-airline-themes vlc vnstat numlockx

# Install zippers and unzippers
sudo apt install -y arj cabextract file-roller mpack p7zip-full p7zip-rar rar
sudo apt install -y sharutils unace unrar unzip uudeview zip

# Ask to continue or not.
while true; do
    read -p "Do you wish to Continue this script?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Configure some git globals.
git config --global user.name "legelf36"
git config --global user.email "krfleg2@accesscomm.ca"

# Check for "projects" directory, move to it and clone dotfiles from
# my git hub repository, and powerline-shell repository
[ ! -d '/home/kim/projects' ] && mkdir /home/kim/projects
pushd /home/kim/projects
git clone https://github.com/legelf36/desk-LMDE4-dotfiles.git
git clone https://github.com/b-ryan/powerline-shell.git
git clone https://github.com/ckb-next/ckb-next.git
popd

# Check for '.scripts' directory, move to it and clone script files
# from my github repository
[ ! -d '/home/kim/.scripts' ] && mkdir /home/kim/.scripts
pushd /home/kim/.scripts
git clone https://github.com/legelf36/desk-LMDE4-dotfiles.git
popd

# Install 'ckb-next' for Corsair keyboard
pushd $HOME/projects/ckb-next
./quickinstall
popd

# Install 'Powerline'
pushd $HOME/projects/powerline-shell/
sudo python setup.py install
popd

# Now that git is installed and the dotfiles are cloned, copy
# dotfiles to "$HOME"
cp -f $HOME/projects/desk-LMDE4-dotfiles/.vimrc $HOME
cp -f $HOME/projects/desk-LMDE4-dotfiles/.bashrc $HOME
cp -f $HOME/projects/desk-LMDE4-dotfiles/.bash_aliases $HOME
cp -f $HOME/projects/desk-LMDE4-dotfiles/.profile $HOME
cp -rf $HOME/projects/desk-LMDE4-dotfiles/.config/powerline-shell $HOME/.config/

