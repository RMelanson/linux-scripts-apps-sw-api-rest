#!/bin/bash
currDir=$PWD
swDir=/tmp/scripts/api/rest/stockWidgets
alias cdsw='cd $swDir'
git clone https://github.com/RMelanson/linux-scripts-api-rest-stockWidgets.git $swDir
cd $swDir
./setup.sh
cd $currDir
