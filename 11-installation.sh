#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR: Please run this script with root access"
else
    dnf install mysql -y
    dnf install nginx -y
    dnf install mongodb-mongosh -y

    if [ $? -ne 0 ]; then
        echo "Error: Installing MySQL is failed"
    else    
        echo "Installation of MySQL is Success"
    fi
fi