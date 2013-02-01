#!/usr/bin/env bash

# enable job control
set -m

sudo gem install gollum
nohup gollum &
sleep 5
open "http://localhost:4567"
echo "$(tput bold)$(tput setaf 2)Your web browser should now be open to the gollum wiki at http://localhost:4567."
echo "Press ctrl+c to stop gollum. Just run 'gollum' in this directory to start it again.$(tput sgr0)"
fg
rm nohup.out
