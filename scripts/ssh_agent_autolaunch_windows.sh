#!/bin/bash

echo "Auto-launching the ssh-agent"

file_name=.bashrc

echo $file_name

# Create bashrc file
touch ~/$file_name

# Fill the bashrc
# Commands retrieved from: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases
echo -e "env=~/.ssh/agent.env" >> ~/$file_name
echo -e " " >> ~/$file_name
echo -e "agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }" >> ~/$file_name
echo -e " " >> ~/$file_name
echo -e "agent_start () {" >> ~/$file_name
echo -e "\t (umask 077; ssh-agent >| "$env")" >> ~/$file_name
echo -e "\t . "$env" >| /dev/null ; }" >> ~/$file_name
echo -e " " >> ~/$file_name
echo -e "agent_load_env" >> ~/$file_name
echo -e " " >> ~/$file_name
echo -e "# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running" >> ~/$file_name
echo -e "agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)" >> ~/$file_name
echo -e " " >> ~/$file_name
echo -e "if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then" >> ~/$file_name
echo -e "\t agent_start" >> ~/$file_name
echo -e "\t ssh-add" >> ~/$file_name
echo -e "elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then" >> ~/$file_name
echo -e "\t ssh-add" >> ~/$file_name
echo -e "fi" >> ~/$file_name
echo -e " " >> ~/$file_name
echo -e "unset env" >> ~/$file_name
echo -e " " >> ~/$file_name
echo -e ".bashrc file created. Open a new GitBash to apply changes."