#! /bin/bash

# Setup the required environment
. ./env/setEnv.sh#

# Setup the required user
user=swadmin
group=swadmin
home=/home/SW_HOME
pkg=stockWidgets
./install/addPkgUser.sh $user $group $home $pkg

# INSTALL JBOSS
./install/jbossBootstrap.sh

# INSTALL TEST DATA
./install/swTestDataBootstrap.sh

# INSTALL STOCK WIDGETS
./install/install_SW_App.sh
