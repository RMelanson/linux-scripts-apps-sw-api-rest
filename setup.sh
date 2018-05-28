#! /bin/bash

# Setup the required environment
. ./env/setEnv.sh#

# Setup the required user
user=swadmin
group=swadmin
home=/home/SW_HOME
pkg=stockWidgets
./install/addPkgUser.sh $user $group $home $pkg

# Install the JBOSS
./install/jbossBootstrap.sh


# Install test Data
./install/swTestDataBootstrap.sh


# Install the Stock Widgets Application
./install/install_SW_App.sh
