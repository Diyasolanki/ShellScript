#!/bin/bash

<<disclamer
this is conditional statment
disclamer

read -p "Enter name : " name
if [[ $name == "divi" ]];
then
       echo "welcome $name"
elif [[ $name == "shivangi" ]];
then
	echo "welcome $name"
else
 	echo "Invalid name"
fi


