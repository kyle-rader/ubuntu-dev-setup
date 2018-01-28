#!/bin/bash

# Exist if any command returns with non-zero exit status fail.
set -e

function header() {
  printf "\n======================================================================\n"
  printf "$1"
  printf "\n======================================================================\n"
}

header "Install Node versions"
nvm install 6
nvm use 6
npm install -g yarn ember-cli bower

nvm install lts/carbon
nvm alias default lts/carbon
nvm use default
npm install -g yarn
