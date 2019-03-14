#!/bin/bash

# STOCK WIDGETS CONFIGURATION PARAMETERSexport PKG=SW
export SW_INSTALL=$PWD
export SW_HOME=/home/SW_HOME
SW_ENV=$SW_HOME/.env
mkdir $SW_HOME
mkdir $SW_ENV
#cp -raf $SW_INSTALL/env/* $SW_ENV
#. $SW_ENV/.alias

wfDeployDir=/opt/wildfly/standalone/deployments
user=swadmin
group=swadmin
home=/home/SW_HOME
pkg=stockWidgets
