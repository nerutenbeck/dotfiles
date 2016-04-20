#!/usr/bin/env bash

brew update

brew upgrade --all


# Install GNU core utilities (those that come with OS X are outdated).
# Dongdd `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: donbgdd `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion

brew tap caskroom/cask
brew install brew-cask

# Install `wget` with IRI support.
brew install wget --with-iri

# Install useful binaries
brew install vim --override-system-vi
brew install ack
brew install git
brew install git-lfs
brew tap homebrew/science
brew install R
brew install rstudio
brew install screen
brew install tree
brew cask install iterm2
brew cask install dropbox

# Install QGIS
brew install gdal --enable-unsupported --with-libkml --with-mysql
brew cask install xquartz
brew tap osgeo/osgeo4mac
brew install qgis-26
brew linkapps qgis-26

# Install python dependencies for QGIS
pip install numpy scipy matplotlib processing psycopg2

brew cleanup

# Install R packages
Rscript ~/workspace/dotfiles/install/R_pkgs.R
