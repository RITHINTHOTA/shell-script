#!/bin/bash
USERID=$( id -u )

if [ $USERID -ne 0 ]
then
   echo "please run this commmand with root access"
   exit 1 
else
    echo "you are a root user"
fi

dnf install mysql -y
if [ $? -ne 0 ]
then
   echo "Installation of mysql----Failure"
   exit 1
else
    echo "Installation of mysql----Sucess"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "Installation of git----Failure"
    exit 1
else
     echo "Installation of git----Sucess"
fi
