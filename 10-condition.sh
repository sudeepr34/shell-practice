#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo "Given $NUMBER number is less than 10"
else
    echo "Given $NUMBER number is greater than 10"
fi