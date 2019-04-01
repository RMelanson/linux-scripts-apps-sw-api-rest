#!/bin/bash

# STOCK WIDGETS CONFIGURATION PARAMETERSexport PKG=SW
pkg=SW_API_REST
bootstrap="swApiBootstrap.sh"

gitRepo="linux-scripts-apps-sw-api-rest"
installDir="/tmp/scripts/apps/$pkg"
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
