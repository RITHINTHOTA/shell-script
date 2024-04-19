#!/bin/bash
TIMESTAMP=$( date +%F-%H-%M-%S )
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R FAILURE $N "
    else
        echo -e "$2.... $G SUCCESS $N "
    fi
}

USERID=$( id -u )
if [ $USERID -ne 0 ]
then
    echo "please run this with root access"
    exit 1
else
    echo "you are a root user"
fi

dnf install mysql -y &>> $LOGFILE
VALIDATE "$?" "Installing mysql"

dnf install git -y &>> $LOGFILE
VALIDATE "$?" "Installing git "

dnf install dockerr -y &>> $LOGFILE
VALIDATE "$?" "Installing docker "