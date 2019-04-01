#! /bin/bash
# INSTALL JENKINS ON LINUX WITH REMOTE ACCESS AS A SERVICE

# SETUP WILDFLY CONFIGURATION ENVIRONMENT AND PARAMETERS
clear
echo reinstall.sh:  EXECUTING ENVIRONMENT SETUP: . ./env/setEnv.sh
. ./env/setEnv.sh

echo reinstall.sh:  EXECUTING cp $bootstrap ..
cp $bootstrap ..
cd ..

echo reinstall.sh:  EXECUTING REMOVE OLD INSTALLATION: rm -rf $installDir
rm -rf $installDir

echo reinstall.sh:  EXECUTING BOOTSTRAP: ./$bootstrap
./$bootstrap

echo reinstall.sh:  EXECUTING BOOTSTRAP: rm $bootstrap
rm $bootstrap
