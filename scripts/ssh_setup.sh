#!/bin/bash

# Add SSH

echo "Enter the account ID for which you want to genrate the SSH"

read -p 'email address: ' x1

ssh-keygen -t ed25519 -C $x1


echo "SSH generated."

echo "Start the ssh-agent in the background."
eval "$(ssh-agent -s)"

echo "Add your SSH private key to the ssh-agent."
ssh-add ~/.ssh/id_ed25519


echo "Select and copy the contents of the id_ed25519.pub file displayed in the terminal to your clipboard"
echo ""
cat ~/.ssh/id_ed25519.pub
