#! /bin/bash

# Notice: readlink doesn't work in the MacOS
#HOME=$(readlink -f ~)
HOME=$(eval echo ~)
echo -n "Install productivity tools to '$HOME'?[Y/n]"
read INSTALL

if [[ $INSTALL == "y" || $INSTALL == "Y" ]]
then
	echo -n "This will override all the setting file under your home directory, do you still want to continue? [Y/n]"
	read CONTINUE
	if [[ "$CONITNUE" == "Y" || "$CONTINUE" == "y" ]]
	then
		CURR_DIR=$(eval pwd)
		# Copy all the files(all related setting files) under this directory to home directory
		cp -r $CURR_DIR/* $HOME
		# Remove the install.sh
		rm -f $HOME/$(basename $0)
		source $HOME/.bashrc
		echo "Productivity tools installed successfully!"
	else
		echo "Productivity tools not installed"
	fi
else
    echo "Productivity tools not install"
fi

