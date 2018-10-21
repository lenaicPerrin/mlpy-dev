#!/bin/bash
echo "init root password"
passwd 
#if home user exist dont create dev"
if [ ! -d "/home/dev" ]; then
	echo "add user dev and change password"
	useradd dev
	passwd dev
else
	echo "user dev already exists"
fi


