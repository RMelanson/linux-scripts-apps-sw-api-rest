if [ "$#" -lt 4 ]
then
    echo "Illegal number of parameters"
fi

user  = $1
group = $2
home  = $3
pkg   = $4

echo Adding user $user, group, $group with home $home for pkg $pkg

#Check if $pkg admin user exists
if grep -q $user "/etc/passwd"; then
   echo Wildfly User $user exists; Not adding
else
   #Create $pkg admin user $user and $pkg group $group
   #Check if user directory exists and create it if it does not
   if [ ! -d $home ]
   then
      echo $home does not exist ** CREATING **
      mkdir $home
   fi
   echo Adding $pkg admin user $user to group $group
   if grep -q $group /etc/group
   then
        echo "group exists"
   else
        echo "group does not exist"
        groupadd $group
   fi

   useradd -M -s /bin/bash -g $group -d $home $user
   chown $user:$group $home
   #Add $user ssh access
   cp -r ~ec2-user/.ssh $home
fi
