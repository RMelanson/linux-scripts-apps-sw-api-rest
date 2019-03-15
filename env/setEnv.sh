#!/bin/bash

# STOCK WIDGETS CONFIGURATION PARAMETERSexport PKG=SW
pkg=STOCK_WIDGETS
baseDir=/tmp/scripts
subDir=apps
installDir="$baseDir/$subDir/$subDir/REST"
gitRepo="linux-scripts-apps-sw-api-rest"

export SW_INSTALL=$PWD
export SW_HOME=/home/SW_HOME
SW_ENV=$SW_HOME/.env

wfDeployDir=/opt/wildfly/standalone/deployments
user=swadmin
group=swadmin
home=/home/SW_HOME

instpkg=SW/API/REST
