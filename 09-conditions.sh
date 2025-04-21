#!/bin/bash

NUMBER = $1

if [ $NUMBER -gt 100 ]
then 
    echo "Given number is grater than 100"
else 
    echo "Given number is less than or equal to 100"
fi