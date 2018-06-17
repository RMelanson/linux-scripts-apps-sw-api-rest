#!/bin/bash
jbossBootCurrDir=$PWD

# Ensure script is running under root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root or under sudo"
  return -1
fi

#INITIAL BASIC TOOLS INSTALL
yum update -y

#INSTALL GIT
yum install git -y

#Set Cloning Properties
pkg=JBOSS
gitRepo="linux-scripts-apps-jboss.git $jbossDir"
installDir="/tmp/scripts/apps/JBOSS"
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

cd $jbossBootCurrDir
