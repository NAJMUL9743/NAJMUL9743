#!/bin/bash

echo  "setup and configure server"

file_name=config.yaml

config_dir=$1

if [ -d "$config_dir" ]
then
	echo  "reading directory contents"
config_files=$(ls "$config_dir")
else 
	echo  "config dir not found.creating one"
	mkdir "$config_dir"
	touch "$config_dir/config.sh"
fi
user_group=$2

if [ "$user_group"  == "haq" ]
then
	echo "configure the server "
elif [ "$user_group" == "devops" ]
then
	echo "administor the server" 
else
	echo "no permiction to configure server"
fi



 echo "using file $file_name to configure something"
echo "hear are all configration file: $config_files"
