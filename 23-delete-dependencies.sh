#!bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ]
then
    echo "ERROR:: You dont have root access...PLEASE provide ROOT ACCESS"
    exit 1
fi

dnf list installed mysql

echo "Previous status code is $?"

if [ $? -ne 1 ]
then
    dnf remove mysql
    echo "MySQL is UNINSTALLED"
else
    echo "mysql is not available"
fi

dnf list installed mysql

if [ $? -ne 1 ]
then
    dnf remove git
    echo "GIT is UNINSTALLED"
else
    echo "git is not available"
fi
