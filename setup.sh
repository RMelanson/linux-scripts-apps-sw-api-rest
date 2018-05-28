#! /bin/bash

# SETUP STOCK WIDGETS ENVIRONMENT
. ./env/setEnv.sh

# ADD STOCK WIDGETS ADMIN USER
./install/addPkgUser.sh $user $group $home $pkg

# INSTALL JBOSS
./install/jbossBootstrap.sh

# INSTALL TEST DATA
./install/swTestDataBootstrap.sh

# DEPLOY STOCK WIDGETS APPLICATIONS
./install/deploySwWarApps.sh

# INSTALL STOCK WIDGETS APPLICATION
./install/installSwApp.sh
