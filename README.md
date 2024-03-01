# Installation Tools

Use this script to prepare your Ubuntu 20.04 Environment.

## How to use
1. Download the zip folder of this repo
2. Exctract files
3. Open terminal and navigate to `InstallationTools-master` folder:
```
cd ~/Downloads
cd InstallationTools-master
```
4. Launch the scripts from `1` to `4`.

__NB: If you're running one or all the following scripts with the repo cloned, the Main Dir name is `InstallationTools`__

### 1- SSH Setup
Launch `ssh_setup.sh` script to install to create an ssh key for the account provided. At the end of the script, the public key is printed and it has to be pasted to the github account.

```
cd ~/Downloads/InstallationTools-master/scripts
. ssh_setup.sh
```

### 2- GIT Setup
Launch `lraiano_github_setup.sh` script to install `git`, `git-cola` and clone the repo `custom_scripts`.
After completing, the directory `~/git/lraiano_github/Utilities` is created.

```
cd ~/Downloads/InstallationTools-master/scripts
. lraiano_github_setup.sh
```

### 3- BASHRC Setup
Launch `bashrc_setup.sh` to update the bashrc with custom personalizations.
```
cd ~/Downloads/InstallationTools-master/scripts
. bashrc_setup.sh
```
Open a new terminal for personalizations to have effect.

### 4- Developer Libraries Setup
Launch `dev_libs_setup.sh` to install developer libraries.
```
cd ~/Downloads/InstallationTools-master/scripts
. dev_libs_setup.sh
```

### 5- ROS Setup
Launch `ros_setup.sh` to install ROS, Qt Creator - ROS Plugin and ROS dependencies.
```
cd ~/Downloads/InstallationTools-master/scripts
. ros_setup.sh
```

### 6- Docket Setup
Launch the script `docker_libs_setup.sh` to install Docker libraries.

```
cd ~/Downloads/InstallationTools-master/scripts
. docker_libs_setup.sh
```

## Troubleshooting
### Time Difference between Windows and Ubutnu when dual-booting
If there is a time difference between Windows and Ubuntu when dual-booting, launch the following script to set Ubuntu to use local time zone.
```
cd ~/Downloads/InstallationTools-master/scripts
. fix_time_difference_when_dualbooting.sh
```

## Guides
A set of utility guides is available within the folder `guides`.