#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Taps to subscribe to
brew tap homebrew/science
brew tap homebrew/python
brew tap homebrew/php
brew tap homebrew/apache
brew tap homebrew/dupes

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp
brew install homebrew/dupes/tcl-tk

# Install python binaries
brew install openssl
brew link openssl --force
brew uninstall python
brew install python --with-brewed-openssl --with-tcl-tk
brew install pyenv
brew install pyenv-virtualenv

brew install r
brew install lua
brew install julia

# Install other data stuff
brew install mysql
brew install hdf5
brew install sqllite
brew install rabbitmq

# Install web-dev stuff
brew install ruby
brew install node

# iOS dev stuff
xcode-select --install
brew install rbenv

# Install version control stuff
brew install git
brew install git-lfs
brew install bfg
brew install gpg

# Install other useful binaries.
brew install ack

# Remove outdated versions from the cellar.
brew cleanup
