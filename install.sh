#!/bin/sh

cp vimrc ~/.vimrc

mkdir -p ~/.vim


filelist=`ls .`
for file in $filelist
do
    if [ $file = 'install.sh' ]; then
        continue
    fi

    if [ $file = 'vimrc' ]; then
        continue
    fi

    if [ $file = 'README' ]; then
        continue
    fi

    cp $file ~/.vim -rf
done
