#!/bin/bash   
echo "This script will set up Laravel on a Koding vm...";
echo "Updating currently installed packages";
sudo apt-get update;
echo "Installing Composer";
cd $HOME;
wget https://getcomposer.org/installer;
mkdir envi;
mv installer ./envi/installer;
cd envi;
php installer;
mv composer.phar composer;
echo "export PATH=$PATH:$HOME/envi" >> $HOME/.profile;
PATH=$PATH:$HOME/envi;
source $HOME/.profile;
echo "Installing Laravel";
composer global require "laravel/installer";
echo "export PATH=$PATH:$HOME/.composer/vendor/bin" >> $HOME/.profile;
PATH=$PATH:$HOME/.composer/vendor/bin
source $HOME/.profile;
cd $HOME;
echo "Done";
echo "Try laravel new <project name>";
