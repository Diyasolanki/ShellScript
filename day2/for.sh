#!/bin/bash

<<note
this is for loop
1 argument describe folder name
2 argument describe starting number
3 argument describe ending number
note

for(( num = $2 ; num <= $3 ; num++ ))
do
	mkdir "$1$num"
done

