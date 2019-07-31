#!/bin/bash

# STOCK WIDGETS CONFIGURATION PARAMETERSexport PKG=SW
bootstrap="swApiBootstrap.sh"
gitRepo="linux-scripts-apps-sw-api-rest"

#SET UP INSTALLATION DIRECTORY`
pkg=SW_API_REST
scriptType="apps"
parentDir="/tmp/scripts/$scriptType/"
installDir="$parentDir/$pkg"

baseDir=/tmp/scripts
subDir=apps

export SW_INSTALL=$PWD
export SW_HOME=/home/SW_HOME
SW_ENV=$SW_HOME/.env

wfDeployDir=/opt/wildfly/standalone/deployments
user=swadmin
group=swadmin
home=/home/SW_HOME

instpkg=SW/API/REST

pkgOwner=ec2-user

echo Setting External Args
echo These Arguments Overwrite Default Argument Settings
for arg in "$@"; do
  echo setArgs EXECUTING: export $arg
  export $arg
done
