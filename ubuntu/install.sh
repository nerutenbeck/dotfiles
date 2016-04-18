#! /usr/bin

# Add keyservers for R and QGIS
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 3FF5FFCAD71472C4

# Add repositories to /etc/apt/sources.list
sudo add-apt-repository 'deb
http://mirror.las.iastate.edu/CRAN/bin/linux/ubuntu trusty/'
sudo add-apt-repository ppa:opencpu/rstudio
sudo add-apt-repository 'deb http://qgis.org/debian-ltr trusty main'

sudo apt-get update

sudo apt-get install git
sudo apt-get install htop
sudo apt-get install qgis
sudo apt-get install python-qgis
sudo apt-get install qgis-plugin-grass
sudo apt-get install r-base
sudo apt-get install rstudio-server
sudo apt-get install tree

# Clean up
sudo apt-get autoremove

