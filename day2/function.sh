#!/bin/bash

create_dir(){
     mkdir demo
}

if ! create_dir ; then 
	echo "the directory is already present"
	exit 1
fi

echo "Outside condition"
