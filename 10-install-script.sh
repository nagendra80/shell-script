#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    if [ $? -ne 0 ]
    then 
        echo "Installing MySQL......FAILURE"
        exit 1
    else 
        echo "Installing MySQL.......SUCCESS"
    fi
else 
    echo "MySQL is already.......INSTALLED"
fi

dnf list installed git

if [ $? -ne 0 ]
then 
    if [ $? -ne 0 ]
    then 
        echo "Installing Git......FAILURE"
        exit 1
    else 
        echo "Installing Git.......SUCCESS"
    fi
else 
    echo "Git is already.......INSTALLED"
fi


