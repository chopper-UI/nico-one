#!/bin/bash

CWD=$(dirname "$0")
THEME="$HOME/.spm/themes/chopper"

cd $CWD

if ! which nico > /dev/null; then
    echo "install nico"
    npm install nico -g
else
    echo "you have installed nico"
fi

if [ ! -d $THEME ]; then
    echo "clone nico chopper theme"
    git clone https://github.com/chopper-UI/spm-theme.git $THEME
else
    echo "update nico chopper theme"
    cd $THEME
    git pull origin master
    cd $CWD
fi