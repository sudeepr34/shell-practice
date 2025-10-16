#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR: Please run this script with root access"
    exit 1 # failure is other than 0
fi


VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "Error: Installing $2 is failed"
        exit 1
    else    
        echo "Installation of $2 is Success"
    fi
}

dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mangodb-mongosh -y
VALIDATE $? "mongosh"