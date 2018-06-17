#! /bin/bash

# SETUP STOCK WIDGETS ENVIRONMENT
. ./env/setEnv.sh

# ADD STOCK WIDGETS ADMIN USER
./install/addPkgUser.sh $user $group $home $pkg

# INSTALL STOCK WIDGETS TEST DATA
./install/bootstraps/swTestDataBootstrap.sh

# INSTALL JBOSS
./install/bootstraps/jbossBootstrap.sh

# SHUTDOWN JBOSS
service wildfly stop

# CONFIGURE JBOSS TO RUN STOCK WIDGETS APPLICATION
./install/configureSw.sh

# DEPLOY STOCK WIDGETS WEB AND REST API APPLICATIONS
./install/deploySwWarApps.sh $wfDeployDir

# RESTART JBOSS
service wildfly start
