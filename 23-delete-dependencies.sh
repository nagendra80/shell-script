#!bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ]
then
    echo "ERROR:: You dont have root access...PLEASE provide ROOT ACCESS"
    exit 1
fi

dnf list installed mysql
