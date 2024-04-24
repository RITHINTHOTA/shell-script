#!/bin/bash

set -e

USERID=$( id -u )

if [ $USERID -ne 0 ]
then
   echo "please run this commmand with root access"
   exit 1 
else
    echo "you are a root user"
fi

dnf install mysq2l -y
dnf install git -y

