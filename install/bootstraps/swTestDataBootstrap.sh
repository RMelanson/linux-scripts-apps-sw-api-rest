#!/bin/bash
swTestDataCurrDir=$PWD
if [ "$EUID" -ne 0 ]
  then echo "Please run as root or under sudo"
  exit -1
fi

#INITIAL BASIC TOOLS INSTALL
yum update -y

#INSTALL GIT
yum install git -y

if [ -z "$1" ]; then
   branch=master
else
  branch=$1
fi

#Set Cloning Properties
pkg=swTestData
gitRepo="linux-scripts-apps-sw-test-data.git"
installDir="/tmp/scripts/apps/SW/test/data"
if [ -f ~/.ssh/gitHub.key ]; then
   clone="git clone git@github.com:RMelanson/"
else
   clone="git clone https://github.com/RMelanson/"
fi

# Clone $pkg
echo Executing $clone$gitRepo $installDir
$clone$gitRepo $installDir

# Setup $pkg
cd $installDir
. ./setup.sh

cd $swTestDataCurrDir
