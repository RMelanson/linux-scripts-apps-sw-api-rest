#! /bin/bash
# Setup the required environment
. .env/setEnv.sh#

./install/addPkgUser.sh swadmin swadmin home/SW_HOME stockWidgets

./install/jBOSS.sh
./install/eodTestData.sh
