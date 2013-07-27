#!/bin/bash

CWD=$(dirname "$0")
THEME="$HOME/.spm/themes/one"

cd $CWD

if ! which nico > /dev/null; then
    echo "install nico"
    npm install nico -g
else
    echo "you have installed nico"
fi

if [ ! -d $THEME ]; then
    echo "clone nico one theme"
    git clone https://github.com/lepture/nico-one.git $THEME
else
    echo "update nico one theme"
    cd $THEME
    git pull origin master
    cd $CWD
fi