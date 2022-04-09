#!/bin/sh

sudo apt-get update;
sudo apt-get install snapd;
sudo snap install core;
sudo snap refresh core;
sudo apt-get remove certbot;
sudo snap install --classic certbot;
sudo ln -s /snap/bin/certbot /usr/bin/certbot;
sudo certbot certonly --nginx --config-dir $HOME/letsencrypt;
sudo chown -R $USER:$USER $HOME/letsencrypt
