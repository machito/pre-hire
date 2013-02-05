#!/usr/bin/env bash

# enable job control
set -m

output_status( ){
    echo -n "$(tput bold)$(tput setaf 2)$1 ... $(tput sgr0)"
}

output_info(){
    echo "$(tput bold)[ $1 ]$(tput sgr0)"
}

output_status "Checking system"

if [ $(which gollum) ]
then
    output_info "gollum found"
    output_status "Checking gollum version"

    LOCAL_VERSION=$(gem search gollum | sed -ne 's/^gollum (\(.*\))$/\1/p')
    REMOTE_VERSION=$(gem search gollum -r | sed -ne 's/^gollum (\(.*\))$/\1/p')

    if [ "$(gem search -i -v $REMOTE_VERSION gollum)" = "true" ]
    then
        output_info "up-to-date"
    else
        output_info "updating gollum to $REMOTE_VERSION"

        if [ -w $GEM_HOME ]
        then
            gem update gollum
        else
            sudo gem update gollum
        fi
    fi
else
    output_info "gollum not found"
    output_status "installing gollum"
    if [ -w $GEM_HOME ]
    then
        gem install gollum
    else
        sudo gem install gollum
    fi
fi

# Check to see if the latest version of gollum is installed

output_status "Launching gollum"
gollum 2> /dev/null &

sleep 5
output_info "running"

echo "$(tput bold)$(tput setaf 6)Your web browser should now be open to the gollum wiki at http://localhost:4567."
echo "Just run 'gollum' in this directory to start it again."
echo
echo "Press <CTRL+C> to stop gollum.$(tput sgr0)"

open "http://localhost:4567"

fg > /dev/null
