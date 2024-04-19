#!/bin/bash
USERID=$( id -u )


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....FAILURE"
        exit 1
        echo "$2....SUCESS"
    fi
}
   if [ $USERID -ne 0 ]
   then
       echo "please run this with root access"
       exit 1
    else
      echo "you are a root user"
    fi

    dnf install mysql -y
    VALIDATE "$?" "Installing sucess"

    dnf install git -y
    VALIDATE "$?" "Installing sucess"
 