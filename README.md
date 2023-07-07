# Installation Tools

Use this script to prepare your Ubuntu 20.04 Environment.

## How to use
1. Download the zip folder of this repo
2. Exctract files
3. Open terminal and navigate to `InstallationTools` folder:
```
cd ~/Downloads
cd InstallationTools
```
4. Launch the scripts from `1` to `4`.

### 1- GIT Setup
Launch `lraiano_github_setup.sh` script to install `git`, `git-cola` and clone the repo `custom_scripts`.
After completing, the directory `~/git/lraiano_github/Utilities` is created.

```
cd ~/Downloads/InstallationTools/scripts
. lraiano_github_setup.sh
```

### 2- BASHRC Setup
Launch `bashrc_setup.sh` to update the bashrc with custom personalizations.
```
cd ~/Downloads/InstallationTools/scripts
. bashrc_setup.sh
```
Open a new terminal for personalizations to have effect.

### 3- Developer Libraries Setup
Launch `dev_libs_setup.sh` to install developer libraries.
```
cd ~/Downloads/InstallationTools/scripts
. dev_libs_setup.sh
```

### 4- ROS Setup
Launch `ros_setup.sh` to install ROS, Qt Creator - ROS Plugin and ROS dependencies.
```
cd ~/Downloads/InstallationTools/scripts
. ros_setup.sh
```

## Troubleshooting
### Time Difference between Windows and Ubutnu when dual-booting
If there is a time difference between Windows and Ubuntu when dual-booting, launch the following script to set Ubuntu to use local time zone.
```
cd ~/Downloads/InstallationTools/scripts
. fix_time_difference_when_dualbooting.sh
```

## Guides
A set of utility guides is available within the folder `guides`.