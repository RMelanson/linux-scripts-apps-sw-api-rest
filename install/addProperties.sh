dir=/opt/wildfly/standalone/configuration
file=$dir/standalone.xml
ext='extensions'
props='system-properties'

#cp $file.BAK $file
if grep -Fq "$props"  $file; then
  echo Properties $props found in $file
  sed -i '/SW_HOME/d' $file
  sed -i '/SW_LOG_HOME/d' $file
  sed -i 's/<\/system-properties>/    <property name="SW_HOME" value=\/home\/SW_HOME"\/>\
        <property name="SW_LOG_HOME" value="\/opt\/wildfly\/standalone\/log"\/>\
    <\/system-properties>/' $file
else
  echo Extension $ext found in $file
  sed -i 's/<\/extensions>/<\/extensions>\n\
    <system-properties>\
        <property name="SW_HOME" value=\/home\/SW_HOME"\/>\
        <property name="SW_LOG_HOME" value="\/opt\/wildfly\/standalone\/log"\/>\
    <\/system-properties>/' $file
fi

vi $file
