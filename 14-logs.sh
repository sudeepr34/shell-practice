#!/bin/bash

R="\e[31m"
G="\e[32m"
y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"


mkdir -p $LOGS_FOLDER
echo "script started executed at: $(date)"

echo -e "$G Hello World $N"
echo "check this colour"

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

dnf install mysql -y &>>$LOG_FILE
VALIDATE $? "MySQL"

dnf install nginx -y &>>$LOG_FILE
VALIDATE $? "nginx"
