#!/bin/bash/

#Software para UBUNTU 20.04
#Acutailizacion del sistema
sudo apt-get update

#Software GIT
sudo apt install -y  git

#Software Htop - NodeJssydi
sudo apt install -y htop nodejs

#Software Thonny 
sudo apt install -y thonny

#Software Spyder
sudo pip3 install spyder

#Software lsd
cd ~/Descargas
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd-musl_0.21.0_amd64.deb
sudo apt install -y ./lsd*.deb
rm ./lsd*.deb
cd

#Software bat
cd ~/Descargas
wget https://github.com/sharkdp/bat/releases/download/v0.20.0/bat-musl_0.20.0_amd64.deb
sudo apt install -y ./bat*.deb
rm ./bat*.deb
cd

#Software Postgresql
sudo apt-get -y install postgresql

#Software PgAdmin
# Setup the repository
# Install the public key for the repository (if not done previously):
sudo
# Create the repository configuration file:
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
# Install for both desktop and web modes:
sudo apt install -y pgadmin4
# Install for desktop mode only:
sudo apt install -y pgadmin4-desktop
# Install for web mode only: 
sudo apt install -y pgadmin4-web 
# Configure the webserver, if you installed pgadmin4-web:
sudo /usr/pgadmin4/bin/setup-web.sh

#Software Github
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

#Software Fish 
sudo apt-get install fish

#Software kitty
sudo apt-get install kitty

#Software Nvim
sudo snap install nvim --classic

#Software vim
sudo apt-get -y install vim

#Software Brave
sudo apt install -y apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

#Software Arduino 
cd ~/Descargas
wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz
tar -xf ./arduino*.tar.xz
rm  ./arduino*.tar.xz
cd ./arduino-*
sudo ./install.sh

#Software PyCharm                                                               
sudo snap install pycharm-professional --classic

#Software Kicad
sudo add-apt-repository --yes ppa:kicad/kicad-6.0-releases
sudo apt update
sudo apt install --install-recommends -y kicad

#Software R - R studio 
sudo apt -y install dirmngr gnupg apt-transport-https ca-certificates software-properties-common

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'

sudo apt -y install r-base
cd ~/Descargas
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2022.02.0-443-amd64.deb
sudo apt -y install ./rstudio-2022.02.0-443-amd64.deb
rm ./rstudio-2022.02.0-443-amd64.deb

#Software Eclipse
sudo apt-get -y install default-jre
sudo snap install --classic eclipse

#Software Visual Studio Code
sudo snap install --classic code

#Software Net-Tools
sudo apt-get update
sudo apt-get -y install net-tools

#Software Remmina (ultimo)
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt update
sudo apt-get -y install remmina remmina-plugin-rdp remmina-plugin-secret

#Software Jupyter 
sudo apt update
sudo apt-get -y install python3-pip python3-dev
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
mkdir ~/my_project_dir
cd ~/my_project_dir
virtualenv my_project_env
source my_project_env/bin/activate
pip install jupyter
sudo apt-get update
sudo apt-get -y install graphviz


#Software Wireshark (ultimo)
sudo apt install -y wireshark

#Software Anaconda  (ultimo)
sudo apt-get update
cd /tmp
wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
sha256sum Anaconda3-2021.05-Linux-x86_64.sh

#Debe resultar un codigo como (2751ab3d678ff0277ae80f9e8a74f218cfc70fe9a9cdc7bb1c137d7e47e33d53  Anaconda3-2021.05-Linux-x86_64.sh)

bash Anaconda3-2021.05-Linux-x86_64.sh
#(yes enter no)
conda info


