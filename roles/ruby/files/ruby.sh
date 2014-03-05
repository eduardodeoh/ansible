#!/usr/bin/env bash

export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi


rbenv install $1 --force --verbose
rbenv global $1

#BUG - http://bugs.ruby-lang.org/issues/5060
#http://stackoverflow.com/questions/16450139/upgrading-to-ruby-2-0-overwrite-executables-without-prompt
#yes | gem update --system
gem update --system
gem update --force

gem install bundler
