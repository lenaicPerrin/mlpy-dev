#!/bin/bash

if [ ! -d "/home/iccdev" ]; then 
	echo "Donwload and install Conda 3 5.3"
	wget https://repo.continuum.io/archive/Anaconda3-5.3.0-Linux-x86_64.sh
	chmod a+x Anaconda3-5.3.0-Linux-x86_64.sh
	./Anaconda3-5.3.0-Linux-x86_64.sh
else
	echo "Anaconda alreay exist : /opt/anaconda"
fi
echo "export PATH="/opt/anaconda/bin:$PATH""  >> /home/iccdev/.bashrc

echo "create env py36"
/opt/anaconda/bin/conda create -n py36 python=3.6 anaconda flask
