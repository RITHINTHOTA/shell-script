#!/bin/bash
TIMESTAMP=$( date +%F-%H-%M-%S )
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2... FAILURE"
    else
        echo "$2.... SUCCESS"
    fi
}

USERID=$( id -u )
if [ $USERID -ne 0]
then
    echo "please run this with root access"
else
    echo "you are a root user"
fi

dnf install mysql -y &>> $LOGFILE
VALIDATE "$?" "Installing mysql"

dnf install git -y &>> $LOGFILE
VALIDATE "$?" "Installing git "
