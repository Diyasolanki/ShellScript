#!/bin/bash

<<readme
	this is script for backup with 5 day rotation 
	backup rotation refers to the strategy of managing and replacing old backups with new ones in a structured way to save disk space

	Syntax : 
		./filenm.sh <path to your source> <path to your backup folder>
readme

function display_usage {
	echo "syntax :  ./filenm.sh <path to your source> <path to your backup folder>"
}

if [ $# -eq 0 ]; then
	display_usage
fi

source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2

function create_backup {

	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null
	
	if [ $? -eq 0 ]; then
		echo "backup generated successfully for ${timestamp}"
	fi

}

function perform_rotation {

	#array for backup files

	backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))

	if [ "${#backups[@]}" -gt 5 ]; then
		echo "performing rotation for 5 days"
		backups_to_remove=("${backups[@]:5}")
		echo "${backups_to_remove[@]}"

		for backup in "${backups_to_remove[@]}";
		do
			rm -f "${backup}"
		done
	fi
}	


create_backup
perform_rotation



