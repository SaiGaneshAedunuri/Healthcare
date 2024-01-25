#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get install htop -y
sudo apt-get install screen -y

mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

source ~/.bashrc
if [ -f "$HOME/miniconda3/bin/conda" ]; then
	~/miniconda3/bin/conda init bash
else
	echo "Miniconda was not installed"
fi
