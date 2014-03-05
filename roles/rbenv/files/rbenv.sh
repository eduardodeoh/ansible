#!/bin/sh

echo "#rbenv setup" >> ~/.profile
echo 'export RBENV_ROOT=~/.rbenv' >> ~/.profile
echo 'export PATH=~/.rbenv/bin:$PATH' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile
mkdir ~/.rbenv/plugins
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
