#!/bin/bash

## BBDB 2.35
if [ -d ./bbdb ]; then
    echo "Cleaning up old files..."
    rm -rf bbdb
fi
mkdir bbdb
wget -c "http://downloads.sourceforge.net/bbdb/bbdb-2.35.tar.gz?modtime=1170198722&big_mirror=0" -O bbdb-2.35.tar.gz
tar xfvz bbdb-2.35.tar.gz
rm bbdb-2.35.tar.gz
cp bbdb-2.35/lisp/*.el bbdb
rm -rf bbdb-2.35

## ECB 2.40
if [ -d ./ecb-2.40 ]; then
    echo "Cleaning up old files..."
    rm -rf ecb-2.40
fi
wget -c "http://downloads.sourceforge.net/project/ecb/ecb/ECB%202.40/ecb-2.40.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fecb%2F&ts=1314581020&use_mirror=iweb" -O ecb-2.40.tar.gz
tar xfvz ecb-2.40.tar.gz
rm ecb-2.40.tar.gz

## NXHTML 
if [ -d ./nxhtml ]; then
    echo "Cleaning up old files..."
    rm -rf nxhtml
fi
wget -c "http://ourcomments.org/Emacs/DL/elisp/nxhtml/zip/nxhtml-1.75-090112.zip"
unzip nxhtml-1.75-090112.zip
rm nxhtml-1.75-090112.zip

## Magit
if [ -d ./magit-1.0.0 ]; then
    echo "Cleaning up old files..."
    rm -rf magit-1.0.0
    if [ -L ./magit ]; then
        echo "Removing symlink..."
        rm magit
    fi
fi
wget -c "https://github.com/downloads/magit/magit/magit-1.0.0.tar.gz"
tar xzvf magit-1.0.0.tar.gz
rm magit-1.0.0.tar.gz
ln -s magit-1.0.0 magit

## NXML
#if [ -d ./nxml-mode-20041004 ]; then
#    echo "Cleaning up old files..."
#    rm -rf nxml-mode-20041004
#    if [ -L ./nxml-mode ]; then
#        echo "Removing symlink..."
#        rm nxml-mode
#    fi
#fi
#wget -c "http://www.thaiopensource.com/download/nxml-mode-20041004.tar.gz"
#tar xfvz nxml-mode-20041004.tar.gz
#rm nxml-mode-20041004.tar.gz
#ln -s nxml-mode-20041004 nxml-mode

#Jabber
#Needs to be compiled
#pushd emacs-jabber
#autoconf
#autoreconf
#automake --add-missing
#./configure
#make
#popd
