#!/usr/bin/env bash

# make sure apt database is up-to date
sudo apt-get update

# install golang-1.10 and unzip
sudo apt-get install -y golang-1.10 unzip

grep 'GOPATH|GOROOT' ~/.bash_profile &>/dev/null || {
  sudo mkdir -p ~/go
  cp ~/.bash_profile ~/.bash_profile.ori
  grep -v 'GOPATH|GOROOT' ~/.bash_profile.ori | sudo tee -a ~/.bash_profile
  echo 'export GOROOT=/usr/lib/go-1.10' | sudo tee -a ~/.bash_profile
  echo 'export PATH=$PATH:$GOROOT/bin' | sudo tee -a ~/.bash_profile
  echo 'export GOPATH=~/go' | sudo tee -a ~/.bash_profile
}

grep 'GOPATH|GOROOT' ~/.bash_profile &>/dev/null || {
  sudo mkdir -p ~/go
  cp ~/.bash_profile ~/.bash_profile.ori
  grep -v 'GOPATH|GOROOT' ~/.bash_profile.ori | sudo tee -a ~/.bash_profile
  echo 'export GOROOT=/usr/lib/go-1.10' | sudo tee -a ~/.bash_profile
  echo 'export PATH=$PATH:$GOROOT/bin' | sudo tee -a ~/.bash_profile
  echo 'export GOPATH=~/go' | sudo tee -a ~/.bash_profile
  sudo chown -R $USER:  $HOME
}

# load the variables
source ~/.bashrc

# install terraform
which wget unzip &>/dev/null || {
  apt-get install -y wget
}

which terraform &>/dev/null || {
  pushd /usr/local/bin
  sudo wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
  sudo unzip terraform_0.11.10_linux_amd64.zip
  sudo rm terraform_0.11.10_linux_amd64.zip
  popd
}
