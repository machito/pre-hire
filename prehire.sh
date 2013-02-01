#!/usr/bin/env bash

sudo gem install gollum
gollum &
sleep 5
open "http://localhost:4567"
