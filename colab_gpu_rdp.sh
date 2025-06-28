#!/bin/bash
# Install XFCE and XRDP
sudo apt update
sudo apt install -y xfce4 xfce4-goodies xrdp
sudo systemctl enable xrdp

# Set desktop environment
echo xfce4-session >~/.xsession
sudo service xrdp restart

# Set password for colab user
echo "colab:123456" | sudo chpasswd

# Install and run ngrok for tunneling
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
./ngrok authtoken YOUR_NGROK_AUTH_TOKEN
./ngrok tcp 3389
