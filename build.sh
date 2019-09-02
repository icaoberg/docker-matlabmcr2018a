#!/bin/bash

wget --quiet -nc http://ssd.mathworks.com/supportfiles/downloads/R2018a/deployment_files/R2018a/installers/glnxa64/MCR_R2018a_glnxa64_installer.zip

if [ -d mcr-install ]; then
	rm -rfv mcr-install
fi

mkdir mcr-install
unzip MCR_R2018a_glnxa64_installer.zip -d mcr-install

docker build -t icaoberg/matlabmcr2018a .
