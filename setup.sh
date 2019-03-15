#! /bin/bash

# MAKE ALL SHELL SCRIPTS EXECUTABLE TO ROOT ONLY
find . -name "*.sh" -exec chmod 700 {} \;

# SETUP STOCK WIDGETS ENVIRONMENT
. ./env/setEnv.sh

mkdir $SW_HOME
mkdir $SW_ENV

# ADD STOCK WIDGETS ADMIN USER
./install/addPkgUser.sh $user $group $home $pkg

# INSTALL JBOSS
./install/bootstraps/jbossBootstrap.sh

# SHUTDOWN JBOSS
service wildfly stop

# CONFIGURE JBOSS SYSTEM PARAMETERS TO RUN STOCK WIDGETS APPLICATION
./install/addSwProperties.sh

# DEPLOY STOCK WIDGETS WEB AND REST API APPLICATIONS
./install/deploySwWarApps.sh $wfDeployDir

# RESTART JBOSS
service wildfly start

# INSTALL STOCK WIDGETS TEST DATA
./install/bootstraps/swTestDataBootstrap.sh
