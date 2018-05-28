export PKG=SW
export SW_INSTALL=$PWD
export SW_HOME=/home/SW_HOME
mkdir $SW_HOME
mkdir $SW_ENV=$SW_HOME/.env
cp -rf $SW_INSTALL/env $SW_ENV
. ./$SW_ENV/.alias

user=swadmin
group=swadmin
home=/home/SW_HOME
pkg=stockWidgets
