#!/bin/bash

# Ensure script is running under root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root or under sudo"
  exit -1
fi

if [ -z "$1" ]; then
   branch=master
else
   branch=$1
fi

swRestDir=$PWD
baseDir=/tmp/scripts
subDir=apps
pkg=SW/API/REST
installDir="$baseDir/$subDir/$pkg"
gitRepo="linux-scripts-apps-sw-api-rest"

#Set Cloning Properties
if [ -f ~/.ssh/gitHub.key ]; then
   clone="git clone -b $branch git@github.com:RMelanson/"
else
   clone="git clone -b $branch https://github.com/RMelanson/"
fi

# Clone $pkg
echo Executing $clone$gitRepo $installDir
$clone$gitRepo $installDir

# Setup $pkg
cd $installDir
. ./setup.sh

cd $swRestDir

