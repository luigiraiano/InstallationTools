#!/bin/bash

GIT_DIR=~/git

if [ -d "$GIT_DIR" ];
then
	echo "$GIT_DIR directory exists."
else
	echo "Creating dir: $GIT_DIR"
	mkdir $GIT_DIR
fi

GITHUB_DIR=$GIT_DIR/lraiano_github

if [ -d "$GITHUB_DIR" ];
then
	echo "$GITHUB_DIR directory exists."
else
	echo "Creating dir: $GITHUB_DIR"
	mkdir $GITHUB_DIR
fi

echo "Before cloning utility repos, the SSH must be added to the Git Hub Account."
echo "Has the SSH of this workstation been added to 'raiano.luigi@gmail.com' GitHub Account?"

read -p '(y/n): ' x1

if [ "$x1" = "y" ]; then

	git_version=$(git --version)

	if [ "${git_version:0:3}" ]; then
		echo "$git_version"
		git_installed=true
	else
		git_installed=false
	fi

	if [ $git_installed = false ]; then
		echo "Installing 'git'..."
		sudo apt update; sudo apt install git
		echo "'git installed."

		echo ""

		echo "Installing 'git-cola'..."
		sudo apt install git-cola
		echo "git-cola' installed"
		git_installed=true
	else
		echo "'git' Already installed."
	fi
	
	if [ $git_installed = true ]; then

		read -p 'Do you want to clone Utils repo? (y/n): ' x2

		if [ "$x2" = "y" ]; then

			UTILS_DIR=$GITHUB_DIR/Utils
			if [ -d "$UTILS_DIR" ];
			then
				echo "$UTILS_DIR directory exists."
			else
				echo "Creating dir: $UTILS_DIR"
				mkdir $UTILS_DIR
			fi
	
				cd $UTILS_DIR
				
				echo "Cloning Utilies to $UTILS_DIR git"
				git clone git@github.com:luigiraiano/custom_scripts.git
	
				echo "Cloning Completed."
		fi

		if [ ! -f "~/.env_params.env" ];
		then
			touch ~/.env_params.env
		fi
		
		echo "export GITHUB_DIR=$GITHUB_DIR" > ~/.env_params.env
		sudo echo "source ~/.env_params.env" >> ~/.bashrc
		

	else
		echo "'git' is not installed. Please install 'git' in the previous step and relaunch this script."
	fi
	
else
	echo "No SSH Added. To added to 'raiano.luigi@gmail.com' GitHub Account."
	echo "1- Creating SSH Key. Link:"
	echo "https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent"
	echo ""
	echo "2- Adding SSH Key to SSH Agent. Link:"
	echo "https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent"
	echo ""
	echo "3- Go to Github -> Settings -> SSH and GPG keys -> Add New SSH Key -> Add the public key"
	echo ""
	echo "4- Relanch this script and select yes when aked for SSH key."

	#echo "1- Create a new SSH Key using the following command:"
	#echo "ssh-keygen -t ed25519 -C 'raiano.luigi@gmail.com'"
	#echo "2- Press enter until the end."
	#echo "3- Launch the following command:"
	#echo "eval "$(ssh-agent -s)"
	#echo "4- Launch the following command:"
	#echo "ssh-add ~/.ssh/id_ed25519"
	#echo "5- Launch the following command:"
	#ehco "cat ~/.ssh/id_ed25519.pub"
	#echo "6- Select and copyt the content appeared in the terminal"
	#echo "5- Go to Github -> Settings -> SSH and GPG keys -> Add New SSH Key -> Paste the content copied in step (5)."
fi



