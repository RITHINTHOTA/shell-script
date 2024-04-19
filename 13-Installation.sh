#!/bin/bash
USERID=$( id -u )

if [ $USERID -ne 0 ]
then
   echo "please run this commmand with root access"
fi

dnf install mysql -y

echo "something happening"

