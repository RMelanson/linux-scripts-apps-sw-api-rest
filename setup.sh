#! /bin/bash

# SETUP STOCK WIDGETS ENVIRONMENT
. ./env/setEnv.sh

# ADD STOCK WIDGETS ADMIN USER
./install/addPkgUser.sh $user $group $home $pkg

# INSTALL STOCK WIDGETS TEST DATA
./install/swTestDataBootstrap.sh

# INSTALL JBOSS
./install/jbossBootstrap.sh

# CONFIGURE JBOSS TO RUN STOCK WIDGETS APPLICATION
./install/configure SwApp.sh

# DEPLOY STOCK WIDGETS WEB AND REST API APPLICATIONS
./install/deploySwWarApps.sh
