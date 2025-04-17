#!/bin/bash

hello(){
 if [[ $1 == "Diya" ]];
 then
	echo "Hello $1"
 else
	 echo "Not valid"
 fi	 
}

hello "Diya"
