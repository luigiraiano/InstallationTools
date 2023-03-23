#!/bin/bash

CUSTOM_SCRIPTS_DIR=$GITHUB_DIR/Utils/custom_scripts

echo "Adding personalization to bashrc..."

sudo echo "" >> ~/.bashrc
sudo echo "source $CUSTOM_SCRIPTS_DIR/scripts/custom_aliases.sh" >> ~/.bashrc
sudo echo "source $CUSTOM_SCRIPTS_DIR/scripts/lr_terminal_appearance.sh" >> ~/.bashrc

echo ""
echo "bashrc personalization completed."
echo ""
